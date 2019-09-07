import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import './ui/BMIHome.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'BMI',
    home: new Bmi(),
  ));
}