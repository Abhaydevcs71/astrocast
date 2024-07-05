import 'package:astrosign/data/datasources/result_remote_datasource.dart';
import 'package:astrosign/domain/entities/result_entity.dart';

class ResultUseCase{

  final ResultRemoteDataSource dataSource;

 // ResultRepo resultRepo = ResultRepoImpl();

  ResultUseCase({required this.dataSource});


  Future<ResultEntity>getResultFromDataSource(String zodiacSign) async{

   final result = await dataSource.getResultFromApi(zodiacSign);
   return result;
  }
}