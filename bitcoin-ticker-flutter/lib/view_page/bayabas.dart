import 'package:flutter/material.dart';

Map<String, int> employeeList = {
  'EasyHwan': 26,
  'InahChoi': 26,
  'PodongJangwoooo': 24,
  'FukaGirl': 30
};

class Bayabas extends StatelessWidget {
  const Bayabas({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BAYABAS🤖'),
      ),
      body: SafeArea(
          child: ListView.separated(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              tileColor: Colors.grey.shade800,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              horizontalTitleGap: 30.0,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              leading: Icon(
                Icons.people_outline,
                size: 40.0,
              ),
              title: Text(
                '${employeeList.keys.toList()[index].toUpperCase()}',
              ),
              subtitle: Text(
                'AGE : ${employeeList.values.toList()[index]}',
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Container();
        },
        itemCount: employeeList.length,
      )),
    );
  }
}
