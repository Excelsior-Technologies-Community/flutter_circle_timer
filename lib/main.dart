import 'package:flutter/material.dart';
import 'package:flutter_circle_timer/flutter_circle_timer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    CircleTimerController controller = CircleTimerController();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor:Colors.teal,
            title: Text("Circle Timer",style: TextStyle(color: Colors.white),)),
        body: Center(
          child: CircleTimer(
            duration: 20,
            controller: controller,
            style: const CircleTimerStyle(
              backgroundColor: Colors.red,
              size: 200,
            ),
          ),
        ),
      ),
    );
  }
}