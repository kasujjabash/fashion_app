import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/index.dart';

class CountDown extends StatelessWidget {
  final int endTime;
  const CountDown({super.key, required this.endTime});

  @override
  Widget build(BuildContext context) {
    return CountdownTimer(
      endTime: endTime,
      textStyle: const TextStyle(fontSize: 15, color: Colors.black),
      onEnd: () {
        print('flash has end');
      },
    );
  }
}
