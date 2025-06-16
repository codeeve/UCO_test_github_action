import 'package:flutter/material.dart';
import 'package:flutter_mvvm/ui/counter/view_model/counter_view_model.dart';
import 'package:provider/provider.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter View'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter Value:',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Consumer<CounterViewModel>(
              builder: (context, viewModel, child) {
                return Text(
                  '${viewModel.counter}',
                  style: Theme.of(context).textTheme.headlineLarge,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<CounterViewModel>().decrementCounter(),
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () => context.read<CounterViewModel>().incrementCounter(),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}