import 'package:astrosign/application/features/result_page/bloc/result_bloc.dart';
import 'package:astrosign/application/features/result_page/widgets/other_results.dart';
import 'package:astrosign/application/features/result_page/widgets/prediction_card.dart';
import 'package:astrosign/data/datasources/result_remote_datasource.dart';
import 'package:astrosign/domain/usecases/result_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultBlocWrapper extends StatelessWidget {
  
  final String image;

  final String zodiacSign;
  const ResultBlocWrapper({super.key, required this.zodiacSign,required this.image,});

  @override
  Widget build(BuildContext context) {

    final resultUseCase = ResultUseCase(dataSource: ResultRemoteDataSourceImpl());

    return BlocProvider(
      create: (context) => ResultBloc(resultUseCase)..add(ResultRequestedEvent(zodiacSign: zodiacSign)),
      child: ResultPage(title: zodiacSign, image: image,),
    );
  }
}






class ResultPage extends StatelessWidget {
  final String title;
  final String image;
 // final String zodiacSign;
  //final ResultStateLoaded state;
  const ResultPage({
    super.key, required this.title, required this.image,  
  });

  // @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Text("Astrocast",style: Theme.of(context).textTheme.headlineMedium,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
          child: BlocBuilder<ResultBloc, ResultState>(
            builder: (context, state) {
              if(state is ResultStateLoading){
                return SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: const Center(child: CircularProgressIndicator(color: Color(0xff5e68c4),)));
              }
                else if (state is ResultStateLoaded) {
                return Column(
                  children: [
                    Center(
                      child: Column(
                        children: [
                          Text(
                                      title.toUpperCase(),
                                      style:
                                          Theme.of(context).textTheme.displayLarge,
                                    ),
                                    const SizedBox(height: 5,),
                          Container(
                            width: 120,
                            height: 120,
                           // color: Colors.black,
                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(image))),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                     PredictionCard(state: state,),
                    const SizedBox(
                      height: 10,
                    ),
                     OtherResults(state: state,),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Wish you a Good day",
                      style: Theme.of(context).textTheme.labelSmall,
                    )
                  ],
                );
              } else if (state is ResultStateError) {
                return  Center(
                  child: Text(state.message),
                );
              }
              return const Center(
                child: Text("Error occures"),
              );
            },
          ),
        ),
      ),
    );
  }
}
