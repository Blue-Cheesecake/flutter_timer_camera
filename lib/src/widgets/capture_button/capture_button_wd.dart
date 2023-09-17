import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CaptureButtonWD extends ConsumerWidget {
  const CaptureButtonWD({Key? key, this.childOnNormal, this.childOnCounting, this.childOnCaptured}) : super(key: key);

  final Widget? childOnNormal;
  final Widget? childOnCounting;
  final Widget? childOnCaptured;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container();
  }
}
