import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

class CountBloc extends Bloc<CountEvent, int> {
  CountBloc() : super(0) {
    on<IncrementEvent>((event, emit) {
      emit(state + 1);
    });
    on<DecrementEvent>((event, emit) {
      emit(state - 1);
    });
  }
}

abstract class CountEvent extends Equatable {}

class IncrementEvent extends CountEvent {
  @override
  List<Object?> get props => [];
}

class DecrementEvent extends CountEvent {
  @override
  List<Object?> get props => [];
}
