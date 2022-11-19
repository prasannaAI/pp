import 'dart:ui';

import 'package:flutter/material.dart';

class about extends StatelessWidget {
  const about({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 167, 89),
      appBar: AppBar(
        title: Text('About Study Buzz '),
        backgroundColor: null,
        elevation: 5.0,
        bottom: PreferredSize(
            child: Container(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 0,
                      right: 200,
                      top: 0,
                      bottom: 20,
                    ),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/logo.jpg"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 0,
                    ),
                    child: Text(
                      'Study',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                    ),
                    child: Text(
                      'Buzz',
                      style: TextStyle(color: Colors.amber[900]),
                    ),
                  )
                ],
              ),
            ),
            preferredSize: const Size.fromHeight(80.0)),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Text('data'),
            ),
          ),
          Container(
            color: Colors.blue,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 0,
                    bottom: 10,
                    top: 10,
                  ),
                  child: Text('Address'),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                  ),
                  child: Text("We'd love to hear from you"),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 0,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child: Text(
                        'We are always available to address the needs of our users.+91-9633491577'),
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
