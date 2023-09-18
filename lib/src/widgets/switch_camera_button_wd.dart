import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logic/logic.dart';

class SwitchCameraButtonWD extends ConsumerWidget {
  const SwitchCameraButtonWD({Key? key, this.child, this.buttonStyle}) : super(key: key);

  final Widget? child;
  final ButtonStyle? buttonStyle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isOnSwitching = ref.watch(timerCameraStateProvider.select((value) => value.isSwitching));
    final isCounting = ref.watch(timerCameraStateProvider.select((value) => value.isCounting));

    return IconButton(
      onPressed: isOnSwitching || isCounting
          ? null
          : () {
              ref.read(timerCameraStateProvider.notifier).switchCamera();
            },
      splashRadius: 0.1,
      style: buttonStyle,
      icon: child ??
          const Icon(
            Icons.sync_outlined,
            size: 25,
          ),
    );
  }
}
