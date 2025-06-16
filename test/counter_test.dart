//test case for counter_view_model.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_mvvm/data/repository/counter_repository.dart';
import 'package:flutter_mvvm/ui/counter/view_model/counter_view_model.dart';

void main(){
  //test create view model
  test('CounterViewModel should be created with initial count', () {
    final counterRepository = CounterRepository();
    final viewModel = CounterViewModel(counterModel: counterRepository);
    
    expect(viewModel.counter, 0);
  });

  //test increment counter
  test('CounterViewModel should increment counter', () {
    final counterRepository = CounterRepository();
    final viewModel = CounterViewModel(counterModel: counterRepository);
    
    viewModel.incrementCounter();
    
    expect(viewModel.counter, 1);
  });

  //test decrement counter
  test('CounterViewModel should decrement counter', () {
    final counterRepository = CounterRepository();
    final viewModel = CounterViewModel(counterModel: counterRepository);
    
    viewModel.incrementCounter(); // Increment first to avoid negative count
    viewModel.decrementCounter();
    
    expect(viewModel.counter, 0);
  });
}


