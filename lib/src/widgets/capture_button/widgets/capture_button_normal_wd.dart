import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../logic/logic.dart';

class CaptureButtonNormalWD extends ConsumerWidget {
  const CaptureButtonNormalWD({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSwitching = ref.watch(timerCameraStateProvider.select((value) => value.isSwitching));
    final isCameraInitialized = ref.watch(timerCameraStateProvider.select((value) => value.isCameraInitialized));
    final isCounting = ref.watch(timerCameraStateProvider.select((value) => value.isCounting));

    return GestureDetector(
      onTap: () {
        if (isSwitching || !isCameraInitialized || isCounting) {
          return;
        }

        ref.read(timerCameraStateProvider.notifier).startCounting();
      },
      child: child ??
          Container(
            width: 75,
            height: 75,
            decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            padding: const EdgeInsets.all(6),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(99),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
    );
  }
}
