import 'package:flutter/material.dart';
import 'package:flutter_mvvm/data/repository/counter_repository.dart';
import 'package:flutter_mvvm/ui/counter/view/counter_view.dart';
import 'package:flutter_mvvm/ui/counter/view_model/counter_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterViewModel(
        counterModel: CounterRepository(),
      ),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CounterView(),
    );
  }
}
