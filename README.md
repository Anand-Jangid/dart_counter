A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`.
In this application I have used bloc package to implement simple counter application. This project consists of two files in lib folder:
 - bloc_observer.dart --> BlocObserver class to observer state changes
 - counter_bloc.dart --> This file consists of event classes(Increment and Decrement) and CounterBloc class