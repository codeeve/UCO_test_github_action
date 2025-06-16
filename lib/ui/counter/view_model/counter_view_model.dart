import 'package:flutter/material.dart';
import 'package:flutter_mvvm/data/repository/counter_repository.dart';

class CounterViewModel extends ChangeNotifier {
  CounterViewModel({
    required CounterRepository counterModel,
  }): _counterModel = counterModel;
  final CounterRepository _counterModel;

  int get counter => _counterModel.count;

  void incrementCounter() {
    _counterModel.count++;
    notifyListeners();
  }

  void decrementCounter() {
    _counterModel.count--;
    notifyListeners();
  }
}