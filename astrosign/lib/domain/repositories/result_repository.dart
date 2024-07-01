import 'package:astrosign/domain/entities/result_entity.dart';

abstract class ResultRepo{

  Future <ResultEntity> getResultFromDataSource(String zodiacSign);
  
}