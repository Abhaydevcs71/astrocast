import 'package:astrosign/data/datasources/result_remote_datasource.dart';
import 'package:astrosign/domain/entities/result_entity.dart';
import 'package:astrosign/domain/repositories/result_repository.dart';

class ResultRepoImpl implements ResultRepo{

  final ResultRemoteDataSource remoteDataSource;

  ResultRemoteDataSource resultRemoteDataSource = ResultRemoteDataSourceImpl();

  ResultRepoImpl({required this.remoteDataSource});
  @override
  Future<ResultEntity> getResultFromDataSource(String zodiacSign) async{
    final result = await resultRemoteDataSource.getResultFromApi(zodiacSign);
    return result;
  }

}