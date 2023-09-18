import 'package:flutter/material.dart';

class TimerOptionStyleParamsModel {
  const TimerOptionStyleParamsModel({
    this.initialValue,
    this.children,
    this.decoration,
    this.thumbDecoration,
    this.duration,
    this.curve,
  });

  final int? initialValue;
  final Map<int, Widget>? children;
  final BoxDecoration? decoration;
  final BoxDecoration? thumbDecoration;
  final Duration? duration;
  final Curve? curve;
}
