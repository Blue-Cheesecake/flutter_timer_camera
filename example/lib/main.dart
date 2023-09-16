import 'package:flutter/material.dart';
import 'package:flutter_timer_camera/flutter_timer_camera.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: _Home(),
    );
  }
}

class _Home extends StatelessWidget {
  const _Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Timer Camera')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                showTimerCamera(
                  context: context,
                  onSubmit: (capturedImage) {},
                );
              },
              child: const Text('Open Camera'),
            )
          ],
        ),
      ),
    );
  }
}
