// ignore_for_file: unused_import

import 'dart:async';
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_gdsc_task_3/splashscreen.dart';

import 'notebad.dart';
// import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
