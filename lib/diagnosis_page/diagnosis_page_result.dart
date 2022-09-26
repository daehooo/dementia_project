import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: appBar_01(context),
      body: Center(
        child: Column(
          children: [
            const Text('귀하의 치매 점수는',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15)),
            const SizedBox(
              height: 5,
            ),
            const Text('OO점 입니다',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30)),
            const SizedBox(
              height: 5,
            ),
            Image.asset(
              'assets/result.png',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 100),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: const Size(350, 80),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 0),
              onPressed: () {
                //move_result
              },
              child: const Text(
                '결과 저장하기',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: const Size(350, 80),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 0),
              onPressed: () {
                navigatorName(context, '/sendMessage');
              },
              child: const Text(
                '편지 쓰러가기',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: const Size(350, 80),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 0),
              onPressed: () {},
              child: const Text(
                '펴나니 상담하기',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
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

void navigatorName(BuildContext context, String path) {
  Navigator.pushNamed(context, path);
}
