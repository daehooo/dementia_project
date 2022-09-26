import 'package:flutter/material.dart';

class Definition04 extends StatefulWidget {
  const Definition04({super.key});

  @override
  State<Definition04> createState() => _Definition04State();
}

class _Definition04State extends State<Definition04> {
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
                      '자식이 있는데 시설에 모시는 것은 부모님을 버리는 행위가 되지 않을까 걱정을 많이해! 하지만 이런것에 죄책감을 갖기 보다는 부모님이 더 편히 계실 수 있는 요양 시설을 세심하게 찾는게 더 도움이 될거야! 또한 치매환자 보호자들의 심리적, 육체적인 2차피해가 많이 발생하고 있어.  내가 부모님을 모시는게 과연 전문시설에 맡기는것 보다 부모님에게 좋을까? 라는 질문을 던져봐!',
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
                Navigator.pushNamed(context, '/definition_05');
              },
              child: const Text(
                '음.. 그럼 병원에 가야하나??!',
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
                '그래도 난 내가 모실래!',
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
