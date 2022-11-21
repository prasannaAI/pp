import 'package:flutter/material.dart';

class about extends StatelessWidget {
  const about({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
