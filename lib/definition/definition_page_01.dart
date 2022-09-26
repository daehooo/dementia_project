import 'package:flutter/material.dart';

class Definition01 extends StatefulWidget {
  const Definition01({super.key});

  @override
  State<Definition01> createState() => _Definition01State();
}

class _Definition01State extends State<Definition01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar_01(context),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(children: <Widget>[
          Image.asset(
            'assets/definition_screen/mrpeonani.png',
            width: 100,
            height: 160,
            fit: BoxFit.fill,
          ),
          Container(
            width: 250,
            height: 250,
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('안녕! 난 미스터 펴나니 ',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                Text('넌 치매에 대해 많이',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                Text('안다고 생각하니?',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                Text(
                  '너랑 얘기하고 싶은데,',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text('어때??',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ],
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
                Navigator.pushNamed(context, '/definition_02');
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
