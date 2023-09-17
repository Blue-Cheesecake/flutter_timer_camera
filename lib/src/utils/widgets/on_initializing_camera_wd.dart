import 'package:flutter/material.dart';

class OnInitializingCameraWD extends StatelessWidget {
  const OnInitializingCameraWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
