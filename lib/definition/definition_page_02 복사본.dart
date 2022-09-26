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
            color: Colors.green,
            child: Column(
              children: const [
                Text('치매라는 병 자체에 대한 이야기는 많이',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
                Text('들어서 모르는 사람은 없을거야.',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                Text('하지만 "보호자"의 관점에서 병을 바라보면',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                Text('또 다른 관점에서 치매를 바라볼 수 있어.',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                Text('넌 치매 보호자들에 대해 생각해본적이 있어?',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              ],
            ),
          )
        ]),
        Column(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: const Size(500, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 0),
              onPressed: () {
                Navigator.pushNamed(context, '');
              },
              child: const Text(
                '응! 난 치매에 대해 잘 알고 있다고!! 후훗',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: const Size(500, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 0),
              onPressed: () {
                Navigator.pushNamed(context, '');
              },
              child: const Text(
                '아니, 얘기하고 싶지 않아...',
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
