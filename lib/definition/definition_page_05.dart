import 'package:flutter/material.dart';

class Definition05 extends StatefulWidget {
  const Definition05({super.key});

  @override
  State<Definition05> createState() => _Definition05State();
}

class _Definition05State extends State<Definition05> {
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
                      '잠깐!!! 무조건 병원에 입원하는게 아니야,치매 시설은 크게 3가지로 나뉠 수 있어, 1.요양병원 2. 주간보호센터 3. 요양원, 각각의 차이를 알 수 있겠니?모르겠다고? 모르면 알려줘야지!',
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
                Navigator.pushNamed(context, '/definition_06');
              },
              child: const Text(
                '궁금해! 알려줘',
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
                '그래도 난 내가 모실거야, 돌아갈래',
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
