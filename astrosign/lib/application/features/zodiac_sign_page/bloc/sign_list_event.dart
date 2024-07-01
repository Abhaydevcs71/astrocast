part of 'sign_list_bloc.dart';

sealed class SignListEvent extends Equatable {
  const SignListEvent();

  @override
  List<Object> get props => [];
}

class SignRequestedEvent extends SignListEvent{

  @override
  List<Object> get props => [];
}
