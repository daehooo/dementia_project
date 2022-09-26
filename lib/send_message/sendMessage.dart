import 'dart:ui';

import 'package:flutter/material.dart';

class SendMessage extends StatefulWidget {
  const SendMessage({super.key});

  @override
  State<SendMessage> createState() => _SendMessageState();
}

class _SendMessageState extends State<SendMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: appBar_01(context),
      body: Center(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/send_message/moon.png',
                  width: 100, height: 100, fit: BoxFit.fill),
              Column(
                children: const [
                  Text('전하지 못 한 진심을',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Text('달에게 전달해 보세요!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.black,
            width: 500,
            height: 300,
            child: Column(children: []),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 350,
            height: 50,
            color: Colors.green,
            child: const Center(
              child: Text(
                '편지 작성하기',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            width: 350,
            height: 150,
            child: TextField(
              minLines: null,
              maxLines: null,
              expands: true,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                hintText:
                    '위 게시판은 치매환자 및 보호자들을 위한 공간입니다.무분별한 비판, 욕설은 신고글의 대상이 됩니다. 평소 하고 싶은 말 또는 전하지 못 한 말들을 적어주세요! ',
                filled: true,
                isCollapsed: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: const Size(350, 70),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                      bottomLeft: Radius.circular(14.0),
                      bottomRight: Radius.circular(14.0)),
                ),
                elevation: 0),
            onPressed: () {
              navigatorName(context, '');
            },
            child: const Text(
              '응원 메세지 보내기',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
        ]),
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
