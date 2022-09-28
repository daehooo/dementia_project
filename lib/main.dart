// ignore: avoid_web_libraries_in_flutter
import 'package:dementia_project/definition/definition_page_01.dart';
import 'package:dementia_project/send_message/sendMessage.dart';
import 'package:flutter/material.dart';

import 'definition/definition_page_02.dart';
import 'definition/definition_page_03.dart';
import 'definition/definition_page_04.dart';
import 'definition/definition_page_05.dart';
import 'definition/definition_page_06.dart';
import 'definition/definition_page_07.dart';
import 'diagnosis_page/diagnosis_page_01.dart';
import 'diagnosis_page/diagnosis_page_02.dart';
import 'diagnosis_page/diagnosis_page_03.dart';
import 'diagnosis_page/diagnosis_page_04.dart';
import 'diagnosis_page/diagnosis_page_05.dart';
import 'diagnosis_page/diagnosis_page_06.dart';
import 'diagnosis_page/diagnosis_page_07.dart';
import 'diagnosis_page/diagnosis_page_08.dart';
import 'diagnosis_page/diagnosis_page_09.dart';
import 'diagnosis_page/diagnosis_page_10.dart';
import 'diagnosis_page/diagnosis_page_11.dart';
import 'diagnosis_page/diagnosis_page_12.dart';
import 'diagnosis_page/diagnosis_page_13.dart';
import 'diagnosis_page/diagnosis_page_14.dart';
import 'diagnosis_page/diagnosis_page_15.dart';
import 'diagnosis_page/diagnosis_page_result.dart';
import 'diagnosis_page/diagnosis_page_resultloading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const MyHomePage(),
          '/second': (context) => const Diagnosis01(),
          '/third': (context) => const Diagnosis02(),
          '/fourth': (context) => const Diagnosis03(),
          '/fifth': (context) => const Diagnosis04(),
          '/sixth': (context) => const Diagnosis05(),
          '/seventh': (context) => const Diagnosis06(),
          '/eightth': (context) => const Diagnosis07(),
          '/ninth': (context) => const Diagnosis08(),
          '/tenth': (context) => const Diagnosis09(),
          '/eleventh': (context) => const Diagnosis10(),
          '/twelfth': (context) => const Diagnosis11(),
          '/thirteenth': (context) => const Diagnosis12(),
          '/fourteenth': (context) => const Diagnosis13(),
          '/fifteenth': (context) => const Diagnosis14(),
          '/sixteenth': (context) => const Diagnosis15(),
          '/resultloading': (context) => const Resultloading(),
          '/result': (context) => const Result(),
          '/sendMessage': (context) => const SendMessage(),
          '/definition_01': (context) => const Definition01(),
          '/definition_02': (context) => const Definition02(),
          '/definition_03': (context) => const Definition03(),
          '/definition_04': (context) => const Definition04(),
          '/definition_05': (context) => const Definition05(),
          '/definition_06': (context) => const Definition06(),
          '/definition_07': (context) => const Definition07(),
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                'assets/peonani.png',
                fit: BoxFit.fill,
                width: 300,
                height: 100,
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            Row(children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.asset(
                  width: 90,
                  height: 90,
                  'assets/image5.png',
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    minimumSize: const Size(250, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    elevation: 0),
                onPressed: () {
                  Navigator.pushNamed(context, '/definition_01');
                },
                child: const Text(
                  '치매에 대해 알아봐요',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ]),
            const SizedBox(
              height: 50,
            ),
            Row(children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.asset(
                  width: 90,
                  height: 90,
                  'assets/image1.png',
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    minimumSize: const Size(250, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    elevation: 0),
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                },
                child: const Text(
                  '치매진단 검사',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ]),
            const SizedBox(
              height: 50,
            ),
            Row(children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.asset(
                  width: 90,
                  height: 90,
                  'assets/image2.png',
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    minimumSize: const Size(250, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    elevation: 0),
                onPressed: () {
                  Navigator.pushNamed(context, '/sendMessage');
                },
                child: const Text(
                  '응원해 편지',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ]),
          ],
        ));
  }
}
