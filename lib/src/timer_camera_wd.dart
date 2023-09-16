import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class TimerCamera extends StatelessWidget {
  const TimerCamera({required this.onSubmit, Key? key}) : super(key: key);

  final void Function(XFile capturedImage) onSubmit;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
