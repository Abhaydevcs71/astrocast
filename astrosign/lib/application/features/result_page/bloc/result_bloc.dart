import 'package:astrosign/domain/entities/result_entity.dart';
import 'package:astrosign/domain/usecases/result_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'result_event.dart';
part 'result_state.dart';

class ResultBloc extends Bloc<ResultEvent, ResultState> {
  final ResultUseCase resultUseCase;

  ResultBloc(this.resultUseCase) : super(ResultInitial()) {


    on<ResultRequestedEvent>((event, emit) async{
      
      print( "bloc called");

      emit (ResultStateLoading());

      try {

        final result = await resultUseCase.getResultFromDataSource(event.zodiacSign);
        
        emit(ResultStateLoaded(result: result));
      }catch (e){
        emit (ResultStateError(message:e.toString()));
      }

    });
  }
}
