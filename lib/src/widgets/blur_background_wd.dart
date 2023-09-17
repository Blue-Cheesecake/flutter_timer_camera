import 'dart:ui';

import 'package:flutter/material.dart';

class BlurBackgroundWD extends StatelessWidget {
  const BlurBackgroundWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black.withOpacity(0.2),
      ),
    );
  }
}
