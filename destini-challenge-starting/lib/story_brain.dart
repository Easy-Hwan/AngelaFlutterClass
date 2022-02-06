import 'story.dart';

class StoryBrain {
  int _storyNumber = 0;
  List<Story> _storyData = [
    Story(
        storyTitle:
            '휴대폰 수신이 되지 않는 외딴 곳의 구불구불한 도로에서 타이어가 터졌습니다. 넌 히치하이킹을 하기로 결정했어 녹슨 픽업트럭이 옆 정류장으로 덜커덩거리며 간다. 넓은 모자를 쓰고 영혼이 없는 눈을 가진 한 남자가 당신을 위해 조수석 문을 열어주며 "태워줄까?"라고 묻는다.',
        choice1: '내가 타볼게. 도와주셔서 감사합니다.!',
        choice2: '그가 살인자인지 먼저 물어보는 게 좋을 거야.'),
    Story(
        storyTitle: '그는 천천히 고개를 끄덕인다.',
        choice1: '적어도 그는 정직해요. 내가 들어갈게.',
        choice2: '잠깐, 타이어 갈 줄 알아.'),
    Story(
        storyTitle:
            '여러분이 운전을 시작하자, 그 낯선 사람은 어머니와의 관계에 대해 이야기하기 시작합니다. 그는 시시각각으로 점점 더 화가 나. 그는 당신에게 글로브 박스를 열어달라고 합니다. 안에는 피가 묻은 칼과 잘린 두 손가락, 그리고 엘튼 존의 카세트 테이프가 있습니다. 그는 글로브 박스에 손을 뻗는다.',
        choice1: '나는 엘튼 존을 사랑해! 카세트테이프 좀 건네줘',
        choice2: '그 사람이냐 나냐! 칼을 들고 찌르세요'),
    Story(
        storyTitle:
            '경찰이 너무 많아! 여러분은 대부분의 성인 연령대에서 교통사고로 인한 사망의 두 번째 주요 원인이라는 것을 알고 있었나요??',
        choice1: '재시작',
        choice2: ''),
    Story(
        storyTitle:
            '가드레일을 들이받고 아래 들쭉날쭉한 바위 쪽으로 몸을 돌리면서 운전 중 누군가를 찌른 석연치 않은 타당성 묻어난다.',
        choice1: '재시작',
        choice2: ''),
    Story(
        storyTitle:
            '당신은 살인자와 유대감을 느끼며 "오늘 밤 사랑을 느낄 수 있겠니"라는 구절을 외친다. 그는 당신을 옆 동네에 내려줄 거예요. 가기 전에 시체를 유기할 만한 곳을 알고 있냐고 묻더군요 당신은 "부두에 가보세요"라고 대답한다.',
        choice1: '재시작',
        choice2: '')
  ];
  getStory() => _storyData[_storyNumber].storyTitle;
  getChoice1() => _storyData[_storyNumber].choice1;
  getChoice2() => _storyData[_storyNumber].choice2;
  restart() => _storyNumber = 0;
  void nextStory(int choiceNumber) {
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  bool buttonShouldBeVisible() {
    //You could also just check if (_storyNumber < 3)
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}
