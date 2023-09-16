import 'package:flutter/material.dart';

class BackButtonWD extends StatelessWidget {
  const BackButtonWD({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      icon: child ??
          const Icon(
            Icons.keyboard_arrow_left_rounded,
            size: 30,
          ),
    );
  }
}
