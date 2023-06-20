import 'dart:math';

import 'package:flutter/material.dart';

class HomePageState extends ChangeNotifier {
  int remainingChances;
  String currentText;
  bool showMessage;
  String message;
  Color messageColor;
  bool buttonIsEnabled;
  int expectedNumber;

  HomePageState(
      [this.remainingChances = 10,
      this.currentText = "",
      this.showMessage = false,
      this.message = "",
      this.messageColor = Colors.red,
      this.buttonIsEnabled = true,
      this.expectedNumber = 0]) {
    expectedNumber = Random().nextInt(100) + 1;
  }

  HomePageState copyWith({
    int? remainingChances,
    String? currentText,
    bool? showMessage,
    String? message,
    Color? messageColor,
    bool? buttonIsEnabled,
    int? expectedNumber,
  }) {
    return HomePageState(
      remainingChances = remainingChances ?? this.remainingChances,
      currentText = currentText ?? this.currentText,
      showMessage = showMessage ?? this.showMessage,
      message = message ?? this.message,
      messageColor = messageColor ?? this.messageColor,
      buttonIsEnabled = buttonIsEnabled ?? this.buttonIsEnabled,
      expectedNumber = expectedNumber ?? this.expectedNumber,
    );
  }
}
