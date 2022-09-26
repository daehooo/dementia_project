import 'package:flutter/material.dart';

class Resultloading extends StatefulWidget {
  const Resultloading({super.key});

  @override
  State<Resultloading> createState() => _ResultloadingState();
}

class _ResultloadingState extends State<Resultloading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: appBar_01(context),
      body: Column(
        children: <Widget>[
          Center(
            child: Column(children: [
              CircularProgressIndicator(
                color: Colors.orangeAccent,
                backgroundColor: Colors.blueGrey,
              ),
              Text('검사중......',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30))
            ]),
          ),
          Center(child: Image.asset('assets/image1.png', fit: BoxFit.contain)),
          const SizedBox(height: 30),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.green,
            ),
            width: 350,
            height: 200,
            child: const Text(
              '치매 선별 검사는 간이 검사이므로, 정확한 진단을 내릴 수 없습니다. 자세한 사항은 전문의와 상담이 필요합니다.',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 30),
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: const Size(350, 100),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 0),
            onPressed: () {
              //move_result
              navigatorName(context, '/result');
            },
            child: const Text(
              '결과 확인하기',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
        ],
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
