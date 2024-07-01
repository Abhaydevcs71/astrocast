import 'package:equatable/equatable.dart';

class ResultEntity extends Equatable {
  final bool status;
  final String prediction;
  final String number;
  final String color;
  final String mantra;
  final String remedy;

  const ResultEntity(
      {required this.status,
      required this.prediction,
      required this.number,
      required this.color,
      required this.mantra,
      required this.remedy});

  @override
  List<Object?> get props => [
        this.status,
        this.prediction,
        this.number,
        this.color,
        this.mantra,
        this.remedy
      ];
}
