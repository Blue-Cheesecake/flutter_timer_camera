import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../logic/logic.dart';
import '../../../utils/utils.dart';

class CaptureButtonCapturedWD extends ConsumerWidget {
  const CaptureButtonCapturedWD({
    required this.onSubmit,
    Key? key,
    this.child,
  }) : super(key: key);

  final OnCapturedImageCallback onSubmit;
  final Widget? child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSwitching = ref.watch(timerCameraStateProvider.select((value) => value.isSwitching));

    return GestureDetector(
      onTap: () {
        if (isSwitching) {
          return;
        }
        onSubmit(ref.read(timerCameraStateProvider.select((value) => value.capturedImage)));
        Navigator.of(context).pop();
      },
      child: child ??
          Container(
            height: 75,
            width: 75,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.check,
              size: 55,
              color: Colors.greenAccent,
            ),
          ),
    );
  }
}
