

import 'package:astrosign/domain/entities/result_entity.dart';

class ResultModel extends ResultEntity{

  const ResultModel({required status,required prediction,required number,required color,required mantra,required remedy}) 
  : super(status: status, prediction: prediction, number: number, color: color, mantra: mantra, remedy: remedy);


factory  ResultModel.fromJson(Map<String, dynamic> json) {
  return ResultModel(
    status : json['status'],
    prediction : json['prediction'],
    number : json['number'],
    color : json['color'],
    mantra : json['mantra'],
    remedy : json['remedy'],);
  }

}