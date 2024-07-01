
import 'dart:convert';

import 'package:astrosign/application/core/api/url.dart';
import 'package:http/http.dart' as http;
import 'package:astrosign/data/models/result_model.dart';

abstract class ResultRemoteDataSource{

  Future<ResultModel> getResultFromApi(String zodiacSign);
}

class ResultRemoteDataSourceImpl implements ResultRemoteDataSource{

  Apis api = Apis();

  final client = http.Client();
  
  @override
  Future<ResultModel> getResultFromApi(String zodiacSign) async{

    try{
      final response = await client.get(

        Uri.parse('${api.url}$zodiacSign'),

        headers: {
          'x-rapidapi-key': api.apiKey,
          'x-rapidapi-host': api.apihost,
          //use your api key 
          // link for generate api key is "https://rapidapi.com/soralapps/api/best-daily-astrology-and-horoscope-api"
          //
        },

        
      );
      if (response.statusCode == 200) {
        print(response);
        print(response.statusCode);

        final Map<String,dynamic> responseBody = jsonDecode(response.body);

        final ResultModel result = 
        ResultModel.fromJson(responseBody);

        print(result);

        return result;
      }else {

        throw Exception("Faild to load result");

      }
    }catch (e){
      throw Exception(e);
    }
  }
}