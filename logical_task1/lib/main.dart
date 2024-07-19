import 'package:flutter/material.dart';
import 'package:logical_task1/Syncronouse/syncronouse.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SyncronuousePractise(),
    );
  }
}