import 'package:flutter/material.dart';

class SwitchCameraButtonWD extends StatelessWidget {
  const SwitchCameraButtonWD({Key? key, this.child, this.buttonStyle}) : super(key: key);

  final Widget? child;
  final ButtonStyle? buttonStyle;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
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
