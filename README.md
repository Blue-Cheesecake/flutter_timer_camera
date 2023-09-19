# Flutter timer camera

A Flutter package that allows you to open the camera and capture images with a timer logic. Perfect for those moments when you need a delay before the shot!

|| Android      | iOS |
|----| ----------- | ----------- |
| **Support** | SDK 21+      | iOS 11.0 +       |


*we support only thess version since this package adopts the `camera` plugin*

## Features
- Open the customized camera directly from Flutter app.
- Set a timer to delay the capture.
- Switch Camera front and back.

## Installation

To use this package, add `flutter_timer_camera` as a [dependency in your pubspec.yaml file](https://docs.flutter.dev/packages-and-plugins/using-packages).


```ymal
dependencies:
  flutter_timer_camera: ^1.0.0
```

**iOS**

Add camera usage description on `ios/Runner/Info.plist`.

```plist
<key>NSCameraUsageDescription</key>
<string>describe why you use camera access</string>
```

**Android**

Change minimumSdk version to at least 21

```
minSdkVersion 21
```

## Usage

```dart
import 'package:flutter_timer_camera/flutter_timer_camera.dart';

.
.
.

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
  child: const Text('Open Camera'),
),
```

## Contributing

Any kind of pull requests are welcome.Feel free to fork the project, open issues, and submit PRs.

## License

[The 3-Clause BSD](https://opensource.org/license/bsd-3-clause/)