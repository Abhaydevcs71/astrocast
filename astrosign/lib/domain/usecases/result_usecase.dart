import 'package:astrosign/data/datasources/result_remote_datasource.dart';
import 'package:astrosign/data/repositories/result_repo_impl.dart';
import 'package:astrosign/domain/entities/result_entity.dart';
import 'package:astrosign/domain/repositories/result_repository.dart';

class ResultUseCase{

  final ResultRemoteDataSource dataSource;

 // ResultRepo resultRepo = ResultRepoImpl();

  ResultUseCase({required this.dataSource});


  Future<ResultEntity>getResultFromDataSource(String zodiacSign) async{

   final result = await dataSource.getResultFromApi(zodiacSign);
   return result;
  }
}