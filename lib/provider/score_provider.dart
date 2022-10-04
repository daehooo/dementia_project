import 'package:flutter/material.dart';

class CountScore extends ChangeNotifier {
  int _score = 0;
  int get score => _score;

  add() {
    _score++;
  }

  add2() {
    _score = _score + 2;
  }
}
