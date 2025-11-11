import 'package:flutter/material.dart';
import 'package:worker_getx/homepage.dart';

void main(){
  runApp(WorkerGetxApp());
}

class WorkerGetxApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Homepage(),
    );
  }
}