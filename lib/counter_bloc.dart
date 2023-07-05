import 'dart:async';

import 'package:bloc/bloc.dart';

sealed class CounterEvent {}

///Counter events
/// 1. CounterIntecrementPressed -> Increment counter by 1
/// 2. CounterDecrementPressed -> Decrement counter by 1
final class CounterIncrementPressed extends CounterEvent {}

final class CounterDecrementPressed extends CounterEvent {}

//CounterBloc class which extends bloc
//Here two event handlers are used to map event to state
class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    // CounterIncrementPressed event handler
    on<CounterIncrementPressed>(
      (event, emit) {
        emit(state + 1);
      },
    );

    // CounterDecrementPressed event handler;
    on<CounterDecrementPressed>(counterDecrementPressed);
  }

  //map CounterDecrementPressed to state
  FutureOr<void> counterDecrementPressed(
      CounterDecrementPressed event, Emitter<int> emit) {
    emit(state - 1);
  }
}
