import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../logic/logic.dart';

class BackButtonOnCapturedWD extends ConsumerWidget {
  const BackButtonOnCapturedWD({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      onPressed: () {
        ref.read(timerCameraStateProvider.notifier).emptyCapturedImage();
      },
      splashRadius: 0.1,
      icon: child ??
          const Icon(
            Icons.keyboard_arrow_left_rounded,
            size: 30,
            color: Colors.white,
          ),
    );
  }
}
