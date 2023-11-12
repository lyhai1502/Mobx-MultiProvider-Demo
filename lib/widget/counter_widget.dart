import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_demo/counter/counter.dart';
import 'package:provider/provider.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Observer(
          builder: (context) => Text(
            '${counter.value}',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        Observer(
          builder: (context) => Text(
            counter.oddOrEven,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        Observer(
          builder: (context) => Text(
            'Square number: ${counter.squareNumber}',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () => counter.increment(),
                icon: const Icon(Icons.add)),
            IconButton(
                onPressed: () => counter.decrement(),
                icon: const Icon(Icons.remove))
          ],
        ),
      ],
    );
  }
}
