import 'package:astrosign/application/features/result_page/bloc/result_bloc.dart';
import 'package:flutter/material.dart';

class PredictionCard extends StatelessWidget {
  final ResultStateLoaded state;
  const PredictionCard({super.key, required this.state});

  @override
  Widget build(BuildContext context) {

    final result = state.result.prediction;
    return Card(
      color: const Color(0xff222540),
      elevation: 50,
      shadowColor: Colors.black,
      child: ListTile(
        subtitle: Text(
          result.toString(),
            style: Theme.of(context).textTheme.displaySmall,
            ),
      ),
    );
  }
}
