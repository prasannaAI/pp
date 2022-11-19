import 'package:flutter/material.dart';

class course extends StatelessWidget {
  const course({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 167, 89),
      body: SafeArea(
          child: Column(
        children: [
          Text('Course',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 30,
              ))
        ],
      )),
    );
  }
}
