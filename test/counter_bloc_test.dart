import 'package:dart_counter/counter_bloc.dart';
import 'package:test/test.dart';
import 'package:bloc_test/bloc_test.dart';

void main() {
  group('Counter Bloc', () {
    late CounterBloc counterBloc;
    setUp(() {
      counterBloc = CounterBloc();
    });

    test('initial state is 0', () {
        expect(counterBloc.state, 0);
    });

  });
}
