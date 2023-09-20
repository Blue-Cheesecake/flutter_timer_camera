import 'package:flutter/material.dart';

/// A data class that defines the style parameters for the timer option.
///
/// This model provides customization options for the appearance and behavior
/// of the timer option slider.
class TimerOptionStyleParamsModel {
  const TimerOptionStyleParamsModel({
    this.initialValue,
    this.decoration,
    this.thumbDecoration,
    this.duration,
    this.curve,
  });

  /// The initial value of the timer option slider.
  ///
  /// Start with 1 until length of Children
  final int? initialValue;

  /// The decoration to apply to the timer option slider's background.
  ///
  final BoxDecoration? decoration;

  /// The decoration to apply to the timer option slider's thumb.
  ///
  final BoxDecoration? thumbDecoration;

  /// The duration over which the thumb animates to its new position.
  ///
  final Duration? duration;

  /// The curve to use for the thumb animation.
  ///
  final Curve? curve;
}
