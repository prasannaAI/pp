<<<<<<< HEAD
import 'dart:ui';

=======
>>>>>>> 211da92b46f7eb68726a2203735fa2325c802dd1
import 'package:flutter/material.dart';

class about extends StatelessWidget {
  const about({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
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
=======
      backgroundColor: const Color.fromARGB(255, 231, 167, 89),
      appBar: AppBar(
        title: const Text('About Study Buzz '),
        backgroundColor: null,
        elevation: 5.0,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              left: 0,
              top: 40,
            ),
            child: CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage("assets/logo.jpg"),
            ),
          ),
          const Padding(
              padding: EdgeInsets.only(
                top: 30,
                left: 00,
              ),
              child: Text.rich(TextSpan(
                  text: 'Study ',
                  style: TextStyle(
                    fontSize: 50,
                  ),
                  children: <InlineSpan>[
                    TextSpan(
                        text: 'Buzz',
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                        ))
                  ]))),
          Padding(
            padding: const EdgeInsets.only(
              top: 50,
              left: 20,
              right: 20,
            ),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: const Color.fromARGB(255, 220, 195, 152)),
              child: const Text(
                'The Study Buzz makes education accessible to everyone. we are an independent, not-for-profit network that offers free online courses for students worldwide. We also provide affordable ways for learners to gain academic credit towards qualifications from recognised institutions.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 1,
                ),
              ),
            ),
          )
        ],
      ),
>>>>>>> 211da92b46f7eb68726a2203735fa2325c802dd1
    );
  }
}
