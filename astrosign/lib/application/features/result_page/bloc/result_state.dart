part of 'result_bloc.dart';

sealed class ResultState extends Equatable {
  const ResultState();
  
  @override
  List<Object> get props => [];
}

final class ResultInitial extends ResultState {}

//loadin State
class ResultStateLoading extends ResultState{

  
}

//loaded State
class ResultStateLoaded extends ResultState{
  final ResultEntity result;

const ResultStateLoaded({required this.result});

@override
  List<Object> get props => [result];
}

//error State
class ResultStateError extends ResultState{
  final String message;

  const ResultStateError({required this.message});
}


