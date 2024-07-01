part of 'sign_list_bloc.dart';

sealed class SignListState extends Equatable {
  const SignListState();
  
  @override
  List<Object> get props => [];
}

 class SignListInitial extends SignListState {}

 //loading State
 class SignStateLoading extends SignListState{}

 //loaded State
 class SignStateLoaded extends SignListState{

  final List<Map<String , dynamic>> sign;

  const SignStateLoaded({required this.sign});

  @override
  List<Object> get props => [sign];
 }

 //errorstate
 class SignStateError extends SignListState{
  
 }
