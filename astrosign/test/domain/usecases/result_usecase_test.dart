import 'dart:async';

import 'package:astrosign/data/models/result_model.dart';
import 'package:astrosign/domain/entities/result_entity.dart';
import 'package:astrosign/domain/usecases/result_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  ResultUseCase resultUseCase;
  MockResultRemoteDataSource mockResultRemoteDataSource;

  setUp(() {
    mockResultRemoteDataSource = MockResultRemoteDataSource();
    resultUseCase = ResultUseCase(dataSource: mockResultRemoteDataSource);
  });

  const testResultDetail = ResultEntity(
    status: true,
    prediction: "fsdgdfhfghbfbf/ndgdgdgvxdgvddgdfhchusydzxgxcvzgxc",
    number: "9",
    color: "black",
    mantra: "rtyr yetytrh  rtyrtyrd drdt",
    remedy: "afdfsdvzvz",
  );

  const signName = 'gemini';

  test('sdasfasfa', () async {
    
    mockResultRemoteDataSource = MockResultRemoteDataSource();
    resultUseCase = ResultUseCase(dataSource: mockResultRemoteDataSource);
    when(mockResultRemoteDataSource.getResultFromApi(signName)).thenAnswer(
        (_) async => Future.value(testResultDetail as FutureOr<ResultModel>?));

        final result = await resultUseCase.getResultFromDataSource(signName);

        expect(result, testResultDetail);
  });
}