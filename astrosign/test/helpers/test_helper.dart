
import 'package:astrosign/data/datasources/result_remote_datasource.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;


@GenerateMocks(
  [
    ResultRemoteDataSource 
  ],
  customMocks:[MockSpec<http.Client>(as: #MockHttpClient)],
)

void main (){
  
}
