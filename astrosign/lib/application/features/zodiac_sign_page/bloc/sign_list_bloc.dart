import 'package:astrosign/sample_data_list.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'sign_list_event.dart';
part 'sign_list_state.dart';

class SignListBloc extends Bloc<SignListEvent, SignListState> {
  SignListBloc() : super(SignListInitial()) {
    on<SignRequestedEvent>((event, emit) async{
      emit(SignStateLoading());

      emit(SignStateLoaded(sign: sign));
    });
  }
}
