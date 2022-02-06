import 'package:bitcoin_ticker/coin_data.dart';
import 'package:bitcoin_ticker/view_page/bayabas.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class PriceScreen extends StatefulWidget {
  String selectCurrency = 'USD';

  Widget androidButton(setState) {
    List<DropdownMenuItem<String>> dropdownItems = [];

    for (String currency in currenciesList) {
      var newItem = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );
      dropdownItems.add(newItem);
    }
    return DropdownButton(
      value: selectCurrency,
      items: dropdownItems,
      onChanged: (value) {
        setState(() {
          selectCurrency = value;
          getData(setState);
        });
      },
    );
  }

  Widget iOSPicker(setState) {
    List<Text> pickerList = [];
    for (String currency in currenciesList) {
      pickerList.add(Text(currency));
    }

    return CupertinoPicker(
      itemExtent: 30.0,
      children: pickerList,
      onSelectedItemChanged: (index) {
        setState(() {
          selectCurrency = currenciesList[index];
          getData(setState);
        });
      },
    );
  }

  Map<String, String> coinValues = {};
  bool isWaiting = false;

  void getData(setState) async {
    coinValues = {};
    isWaiting = true;
    try {
      var data = await CoinData().getCoinData(selectCurrency);
      isWaiting = false;
      setState(() {
        coinValues = data;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.wb_cloudy_outlined),
          color: Colors.white,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Bayabas()));
          },
        ),
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: cryptoList
                  .map(
                    (e) => Padding(
                      padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
                      child: Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 28.0),
                          child: Text(
                            widget.coinValues[e] == null
                                ? '1 $e = ? ${widget.selectCurrency}'
                                : '1 $e = ${widget.coinValues[e]} ${widget.selectCurrency}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList()),
          Container(
              height: 150.0,
              alignment: Alignment.center,
              padding: EdgeInsets.only(bottom: 30.0),
              color: Colors.blueGrey.shade900,
              child: Platform.isIOS
                  ? widget.iOSPicker(setState)
                  : widget.androidButton(setState)),
        ],
      ),
    );
  }
}
