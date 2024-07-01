import 'package:astrosign/application/features/zodiac_sign_page/zodiac_sign_page.dart';
import 'package:astrosign/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const ZodiacSignPage()
    );
  }
}

