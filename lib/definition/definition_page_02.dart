import 'package:flutter/material.dart';

class Definition02 extends StatefulWidget {
  const Definition02({super.key});

  @override
  State<Definition02> createState() => _Definition02State();
}

class _Definition02State extends State<Definition02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar_01(context),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(children: <Widget>[
          Image.asset(
            'assets/definition_screen/mrpeonani2.png',
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
                  Text('치매에 대한 이야기는 많이 들어서 ',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  Text('모르는 사람은 없을거야. 하지만 "보호자"의 관점에서',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  Text(' 치매를 바라본다면, 또 다른 병으로 다가오게 될거야.',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  Text(
                    '바로 보호자들의 정신적, 육체적인 고통의 힘듦이야..',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text('넌 치매 보호자에 대해 생각해 본적이 있니?',
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
                Navigator.pushNamed(context, '/definition_03');
              },
              child: const Text(
                '힘들면 얼마나 힘들겠어..?',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
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
                Navigator.pushNamed(context, '/definition_05');
              },
              child: const Text(
                '힘들면,, 병원에 모시면 되잖아?',
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
