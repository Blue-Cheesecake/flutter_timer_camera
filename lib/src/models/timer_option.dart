/// A class [TimerOption] used for customized Timer displayed in [CameraScreen].
///
/// The user should use this class in order to customize TimerOption passed [showTimerCamera] method
class TimerOption {
  TimerOption({required this.label, required this.startCounter});

  /// The label string which will be displayed in [CameraScreen]
  ///
  final String label;

  /// The counter value for this timer option
  ///
  final int startCounter;
}
