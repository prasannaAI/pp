import 'package:flutter/material.dart';
import 'package:newapp/aboutus.dart';
import 'package:newapp/courses.dart';
import 'package:newapp/profile.dart';

class newhome extends StatelessWidget {
  const newhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 231, 167, 89),
        body: SafeArea(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  right: 110,
                  left: 30,
                  top: 30,
                ),
                child: Text(
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
              const Padding(
                padding: EdgeInsets.only(
                  top: 30,
                  bottom: 20,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(
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
                  padding: const EdgeInsets.only(
                    bottom: 20,
                    top: 20,
                    left: 50,
                  ),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const course())));
                      },
                      child: const Text(' Courses '))),
              Padding(
                  padding: const EdgeInsets.only(
                    bottom: 20,
                    left: 50,
                  ),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const about())));
                      },
                      child: const Text('About us'))),
            ],
          ),
        ));
  }
}
