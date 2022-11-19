import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newapp/aboutus.dart';
import 'package:newapp/courses.dart';
import 'package:newapp/profile.dart';
import 'aboutus.dart';

class newhome extends StatelessWidget {
  const newhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 231, 167, 89),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  right: 110,
                  left: 30,
                  top: 30,
                ),
                child: const Text(
                  'Welcome Guys...',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 30,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 60,
                  left: 50,
                ),
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage("assets/logo.jpg"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 30,
                  bottom: 20,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                    left: 50,
                  ),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => profile())));
                      },
                      child: const Text('  Profile  '))),
              Padding(
                  padding: EdgeInsets.only(
                    bottom: 20,
                    top: 20,
                    left: 50,
                  ),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => course())));
                      },
                      child: const Text(' Courses '))),
              Padding(
                  padding: EdgeInsets.only(
                    bottom: 20,
                    left: 50,
                  ),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) => about())));
                      },
                      child: const Text('About us'))),
            ],
          ),
        ));
  }
}
