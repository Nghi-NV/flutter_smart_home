import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Cubit<int> {
  CounterBloc() : super(0);

  int get count {
    return state;
  }

  void increment() => emit(state + 1);

  void decrement() => emit(state - 1);
}
