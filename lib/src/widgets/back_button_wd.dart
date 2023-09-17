import 'package:flutter/material.dart';

class BackButtonWD extends StatelessWidget {
  const BackButtonWD({Key? key, this.child, this.buttonStyle}) : super(key: key);

  final Widget? child;
  final ButtonStyle? buttonStyle;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      splashRadius: 0.1,
      style: buttonStyle,
      icon: child ??
          const Icon(
            Icons.keyboard_arrow_left_rounded,
            size: 30,
          ),
    );
  }
}
