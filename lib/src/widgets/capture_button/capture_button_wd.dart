import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../logic/logic.dart';
import 'widgets/widgets.dart';

class CaptureButtonWD extends ConsumerWidget {
  const CaptureButtonWD({Key? key, this.childOnNormal, this.childOnCounting, this.childOnCaptured}) : super(key: key);

  final Widget? childOnNormal;
  final Widget? childOnCounting;
  final Widget? childOnCaptured;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (ref.watch(timerCameraStateProvider.select((value) => value.isCounting))) {
      return CaptureButtonCountingWD(child: childOnCounting);
    }
    if (ref.watch(timerCameraStateProvider.select((value) => value.isGotImage))) {
      return CaptureButtonCapturedWD(child: childOnCaptured);
    }

    return CaptureButtonNormalWD(child: childOnNormal);
  }
}
