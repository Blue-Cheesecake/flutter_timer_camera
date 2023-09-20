import 'package:flutter/material.dart';

class BackButtonOnCapturedWD extends StatelessWidget {
  const BackButtonOnCapturedWD({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return child ?? Container();
  }
}
