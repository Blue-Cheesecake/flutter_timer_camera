import 'package:flutter/material.dart';

class CaptureButtonCountingWD extends StatelessWidget {
  const CaptureButtonCountingWD({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: child ?? Container(),
    );
  }
}
