import 'package:bloc/bloc.dart';
import 'package:dart_counter/bloc_observer.dart';
import 'package:dart_counter/counter_bloc.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  // CounterBloc()
  //   ..add(CounterIncrementPressed())
  //   ..add(CounterIncrementPressed())
  //   ..add(CounterDecrementPressed())
  //   ..close();
  final bloc = CounterBloc();
  //printing the initial state
  print("Current state is : ${bloc.state}");
  //adding incrment event
  bloc.add(CounterIncrementPressed());
  await Future.delayed(Duration.zero);
  //printing the state now
  print("Current state is : ${bloc.state}");
  await Future.delayed(const Duration(seconds: 2));
  //adding another incrment event
  bloc.add(CounterIncrementPressed());
  await Future.delayed(Duration.zero);
  //printing the state now
  print("Current state is : ${bloc.state}");
  //adding decrment event
  bloc.add(CounterDecrementPressed());
  await Future.delayed(Duration.zero);
  //printing the state now
  print("Current state is : ${bloc.state}");
  //closing the bloc
  await bloc.close();
}
