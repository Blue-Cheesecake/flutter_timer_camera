import 'package:flutter/material.dart';

import 'widgets.dart';

class CaptureButtonCountingWD extends StatelessWidget {
  const CaptureButtonCountingWD({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return child ?? const CaptureButtonNormalWD();
  }
}
