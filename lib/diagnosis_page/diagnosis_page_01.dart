import 'package:flutter/material.dart';

class Diagnosis01 extends StatefulWidget {
  const Diagnosis01({super.key});

  @override
  State<Diagnosis01> createState() => _Diagnosis01State();
}

class _Diagnosis01State extends State<Diagnosis01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar_01(context),
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          const Center(
            child: Text(
              '언제 어떤일이 일어 났는지 기억하지 못 한다.',
              style: TextStyle(fontSize: 40),
            ),
          ),
          SizedBox(
            width: 200,
            height: 150,
            child: Image.asset("assets/image3.png"),
          ),
          const SizedBox(
            height: 50,
          ),
          question(context, '/third')
        ],
      ),
    );
  }

  Expanded question(BuildContext context, String path) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              Image.asset(
                "assets/diagnosis_screen/react_no.png",
                width: 70,
                height: 70,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    minimumSize: const Size(300, 70),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 0),
                onPressed: () {
                  navigatorName(context, path);
                },
                child: const Text(
                  '1.그렇지 않다',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Image.asset(
                "assets/diagnosis_screen/react_mid.png",
                width: 70,
                height: 70,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    minimumSize: const Size(300, 70),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 0),
                onPressed: () {
                  navigatorName(context, path);
                },
                child: const Text(
                  '2. 간혹(약간) 그렇다',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(children: [
            Image.asset(
              "assets/diagnosis_screen/react_yes.png",
              width: 70,
              height: 70,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: const Size(300, 70),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 0),
              onPressed: () {
                navigatorName(context, path);
              },
              child: const Text(
                '3. 자주 그렇다',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
          ]),
          const SizedBox(
            height: 70,
            width: 1,
          )
        ],
      ),
    );
  }

  void navigatorName(BuildContext context, String path) {
    Navigator.pushNamed(context, path);
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
        '01',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
      ),
    );
  }
}
