import 'dart:math';

import 'package:flutter/material.dart';
import 'package:what_number_am_i/pages/home/home_page_state.dart';

class HomePageProvider extends ChangeNotifier {
  var homePageState = HomePageState();
  var expectedNumber = Random().nextInt(100) + 1;

  void changeCurrentText(String text) {
    homePageState = homePageState.copyWith(currentText: text);
    notifyListeners();
  }

  void verify() {
    var remainingChances = homePageState.remainingChances - 1;
    var currentNumber = int.tryParse(homePageState.currentText);
    homePageState = homePageState.copyWith(
      remainingChances: remainingChances,
      buttonIsEnabled: remainingChances > 0,
      messageColor: getMessageColor(
        currentNumber,
        expectedNumber,
      ),
      message: getMessage(currentNumber, expectedNumber),
      showMessage: true,
    );
    notifyListeners();
  }

  String getMessage(int? currentNumber, int expectedNumber) {
    var message = "";

    if (currentNumber == null) {
      message = "This is not a number";
    } else if (currentNumber == expectedNumber) {
      message = "You're right";
    } else if (currentNumber < expectedNumber) {
      message = "I'm bigger than that";
    } else if (currentNumber > expectedNumber) {
      message = "I'm smaller than that";
    }

    return message;
  }

  Color getMessageColor(int? number, int expectedNumber) {
    Color color;
    if (number == expectedNumber) {
      color = Colors.green;
    } else {
      color = Colors.red;
    }
    return color;
  }
}
