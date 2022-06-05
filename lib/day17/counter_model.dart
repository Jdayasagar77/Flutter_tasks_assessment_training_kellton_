import 'package:flutter/material.dart';

import 'my_counter.dart';

class CounterModel extends Model {
//Properties
  MyCounter myCounter = MyCounter(0);

  int get counter => myCounter.counter;

//Events / Actions
  void add() {
    myCounter.increaseCount();
    notifyListeners();
  }
}
