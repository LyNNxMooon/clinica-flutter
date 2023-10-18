import 'package:flutter/material.dart';

class PickedDate extends ChangeNotifier {
  DateTime date = DateTime.now();

  String name = '';

  selectedDate(DateTime pickedDate) {
    date = pickedDate;

    notifyListeners();
  }
}
