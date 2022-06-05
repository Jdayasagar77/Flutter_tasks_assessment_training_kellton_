import 'card_control.dart';
import './services/calculate_bmi_service.dart';
import './services/bmi_input_service.dart';
import './services/bmi_result_service.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: BMIInputPage(),
  ));
}
