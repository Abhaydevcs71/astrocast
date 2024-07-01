part of 'result_bloc.dart';

sealed class ResultEvent extends Equatable {
  const ResultEvent();

  @override
  List<Object> get props => [];
}

class ResultRequestedEvent extends ResultEvent{

  final String zodiacSign;

  const ResultRequestedEvent({required this.zodiacSign});

  @override
  List<Object> get props => [zodiacSign];
}
