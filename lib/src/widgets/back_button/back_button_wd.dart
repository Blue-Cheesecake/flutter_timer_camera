import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../logic/logic.dart';
import 'widgets/widgets.dart';

class BackButtonWD extends ConsumerWidget {
  const BackButtonWD({Key? key, this.childOnNormal, this.childOnCaptured}) : super(key: key);

  final Widget? childOnNormal;
  final Widget? childOnCaptured;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isCaptured = ref.watch(timerCameraStateProvider.select((value) => value.isGotImage));

    if (isCaptured) {
      return BackButtonOnCapturedWD(child: childOnCaptured);
    }

    // return back on normal
    return BackButtonOnNormalWD(child: childOnNormal);
  }
}
