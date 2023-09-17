import 'package:flutter/material.dart';

class CaptureButtonCapturedWD extends StatelessWidget {
  const CaptureButtonCapturedWD({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: child ?? Container(),
    );
  }
}
