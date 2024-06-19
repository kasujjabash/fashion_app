import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/index.dart';

class CountDown extends StatelessWidget {
  final int endTime;
  const CountDown({super.key, required this.endTime});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: const Color.fromRGBO(233, 224, 216, 1),
            borderRadius: BorderRadius.circular(15)),
        child: CountdownTimer(
          endTime: endTime,
          textStyle: const TextStyle(fontSize: 15, color: Colors.black),
          onEnd: () {
            print('flash has end');
          },
        ),
      ),
    );
  }
}
