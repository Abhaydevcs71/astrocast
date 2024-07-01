import 'package:astrosign/application/features/result_page/bloc/result_bloc.dart';
import 'package:flutter/material.dart';

class OtherResults extends StatelessWidget {
   final ResultStateLoaded state;
  const OtherResults({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
     final result = state.result;
    return  Column(
      children: [
        OtherResultCard(title: "Number", subtitle: result.number),
        const SizedBox(height: 10,),
        OtherResultCard(title: "Color", subtitle: result.color),
        const SizedBox(height: 10,),
        OtherResultCard(title: "Mantra", subtitle: result.mantra),
        const SizedBox(height: 10,),
        OtherResultCard(title: "remedy", subtitle: result.remedy)
      ],
    );
  }
}

class OtherResultCard extends StatelessWidget {
  final String title;
  final String subtitle;
  const OtherResultCard({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xff222540),
      elevation: 50,
      shadowColor: Colors.black,
      child: ListTile(
        subtitle: Text(
          subtitle,
            style: Theme.of(context).textTheme.displaySmall,
            ),
            title: Text(title,style: Theme.of(context).textTheme.labelMedium,),

      ),
    );
  }
}