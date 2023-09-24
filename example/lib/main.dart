import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_timer_camera/flutter_timer_camera.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _Home(),
    );
  }
}

class _Home extends StatefulWidget {
  const _Home({Key? key}) : super(key: key);

  @override
  State<_Home> createState() => _HomeState();
}

class _HomeState extends State<_Home> {
  XFile? currentImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timer Camera'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                showTimerCamera(
                  context: context,
                  onSubmit: (capturedImage) {
                    setState(() {
                      currentImage = capturedImage;
                    });
                  },
                );
              },
              child: const Text('Open Camera 1'),
            ),
            ElevatedButton(
              onPressed: () {
                showTimerCamera(
                  context: context,
                  defaultTimerOptionIndex: 1,
                  timerOptions: [
                    TimerOption(label: 'zero', startCounter: 0),
                    TimerOption(label: '5sec', startCounter: 5),
                    TimerOption(label: '8sec', startCounter: 8),
                  ],
                  onSubmit: (capturedImage) {
                    setState(() {
                      currentImage = capturedImage;
                    });
                  },
                );
              },
              child: const Text('Open Camera 2'),
            ),
            currentImage == null
                ? const SizedBox.shrink()
                : SizedBox(
                    width: 300,
                    height: 300,
                    child: Image.file(File(currentImage!.path)),
                  ),
          ],
        ),
      ),
    );
  }
}
