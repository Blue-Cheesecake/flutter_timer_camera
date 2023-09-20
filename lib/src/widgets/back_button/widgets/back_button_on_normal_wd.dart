import 'package:flutter/material.dart';

class BackButtonOnNormalWD extends StatelessWidget {
  const BackButtonOnNormalWD({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      splashRadius: 0.1,
      icon: child ??
          const Icon(
            Icons.close,
            size: 30,
          ),
    );
  }
}
