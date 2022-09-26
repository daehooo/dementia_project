import 'package:flutter/material.dart';

class Diagnosis02 extends StatefulWidget {
  const Diagnosis02({super.key});

  @override
  State<Diagnosis02> createState() => _Diagnosis02State();
}

class _Diagnosis02State extends State<Diagnosis02> {
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
              '며칠 전에 들었던 이야기를 잊는다.',
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
                  navigatorName(context, '/fourth');
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
                  navigatorName(context, '/fourth');
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
          Row(
            children: [
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
                  navigatorName(context, '/fourth');
                },
                child: const Text(
                  '3. 자주 그렇다',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ],
          ),
        ],
      ),
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
        '02',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
      ),
    );
  }
}

void navigatorName(BuildContext context, String path) {
  Navigator.pushNamed(context, path);
}
