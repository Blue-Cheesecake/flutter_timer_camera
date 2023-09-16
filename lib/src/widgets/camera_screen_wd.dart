import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logic/logic.dart';

class CameraScreenWD extends ConsumerWidget {
  const CameraScreenWD({
    required this.cameraController,
    required this.initializeControllerFuture,
    this.imageFit,
    Key? key,
  }) : super(key: key);

  final CameraController cameraController;
  final Future<void> initializeControllerFuture;
  final BoxFit? imageFit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final XFile? capturedImage = ref.watch(timerCameraStateProvider.select((value) => value.capturedImage));

    if (capturedImage != null) {
      return LayoutBuilder(
        builder: (context, constraints) => Image.file(
          File(capturedImage.path),
          width: constraints.maxWidth,
          height: constraints.maxHeight,
          // TODO: refactor to receive input from client
          fit: imageFit ?? BoxFit.cover,
        ),
      );
    }

    return FutureBuilder(
      future: initializeControllerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return LayoutBuilder(
            builder: (context, constraints) => SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              child: CameraPreview(cameraController),
            ),
          );
        }

        return const CircularProgressIndicator();
      },
    );
  }
}
