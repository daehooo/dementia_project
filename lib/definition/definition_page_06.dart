import 'package:flutter/material.dart';

class Definition06 extends StatefulWidget {
  const Definition06({super.key});

  @override
  State<Definition06> createState() => _Definition06State();
}

class _Definition06State extends State<Definition06> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar_01(context),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(children: <Widget>[
          Image.asset(
            'assets/diagnosis_screen/react_no.png',
            width: 100,
            height: 160,
            fit: BoxFit.fill,
          ),
          Container(
            width: 290,
            height: 300,
            color: Colors.blue,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                      '일단, 요양병원, 주간보호센터, 요양원 각자의 역할과 가능이 다르다는 것을 알아야해.  각각 적용되는 보험과 법도 다르고 케어해주는 사람도 다 다르기 때문이야. 의료진이 가장 추천하는것은 노인 유치원이라고 불리는 주간보호센터에 맡기는 거래. 이른바 노인유치원이라고 불려, 요양원은 거동및 일상생활,치매 등의 양상이 상당히 안좋을 때, 요양병원은 돌봄과 전문적인 치료가 꼭 병행할 때 가는게 좋아. 할 말이 많지만…여기까지!! 아, 참! 마지막으로 할 말 이있어',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ],
              ),
            ),
          )
        ]),
        const SizedBox(
          height: 50,
        ),
        Column(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: const Size(500, 80),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 0),
              onPressed: () {
                Navigator.pushNamed(context, '/definition_07');
              },
              child: const Text(
                '뭔데?',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[300],
                  minimumSize: const Size(500, 80),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 0),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: const Text(
                '안들을래( 홈으로가기 )',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
          ],
        )
      ]),
    );
  }

  AppBar appBar_01(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_rounded, size: 30)),
      title: const Text(
        '',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
      ),
    );
  }
}

void navigatorName(BuildContext context, String path) {
  Navigator.pushNamed(context, path);
}
