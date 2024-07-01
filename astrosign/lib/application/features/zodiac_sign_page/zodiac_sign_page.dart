import 'package:astrosign/application/features/zodiac_sign_page/widgets/zodiac_sign_list.dart';
import 'package:flutter/material.dart';

class ZodiacSignPage extends StatelessWidget {
  const ZodiacSignPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Text("Astrocast",style: Theme.of(context).textTheme.headlineMedium,),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: SignBlocWrapper()),
              
          ],
        ),
      ),
    );
  }
}