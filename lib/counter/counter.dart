import 'package:mobx/mobx.dart';

part 'counter.g.dart';

class Counter = CounterBase with _$Counter;

abstract class CounterBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }

  @action
  void decrement() {
    if (value == 0) return;
    value--;
  }

  @computed
  int get squareNumber {
    return value * value;
  }

  @computed
  String get oddOrEven {
    return value % 2 == 0 ? "Even" : "Odd";
  }
}
