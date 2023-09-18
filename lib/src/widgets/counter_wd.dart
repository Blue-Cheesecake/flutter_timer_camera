import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logic/logic.dart';

class CounterWD extends ConsumerWidget {
  const CounterWD({Key? key, this.textStyle}) : super(key: key);

  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isCounting = ref.watch(timerCameraStateProvider.select((value) => value.isCounting));
    final int currentCounter = ref.watch(timerCameraStateProvider.select((value) => value.timerOptionCounter));

    if (currentCounter == 0 || !isCounting) {
      return const SizedBox.shrink();
    }

    return Text(
      currentCounter.toString(),
      style: textStyle ?? const TextStyle(color: Colors.white, fontSize: 90),
    );
  }
}
