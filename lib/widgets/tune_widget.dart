import 'package:flutter/material.dart';
import 'package:tuns_app/models/tune_model.dart';

class TuneWidget extends StatelessWidget {
  const TuneWidget({
    super.key,
    required this.color,
    required this.tune,
  });
  final Color color;
  final TuneModel tune;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        tune.playSound();
      },
      child: Container(color: color),
    );
  }
}
