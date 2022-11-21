<<<<<<< HEAD
import 'package:flutter/cupertino.dart';
=======
>>>>>>> 211da92b46f7eb68726a2203735fa2325c802dd1
import 'package:flutter/material.dart';
import 'package:newapp/aboutus.dart';
import 'package:newapp/courses.dart';
import 'package:newapp/profile.dart';
<<<<<<< HEAD
import 'aboutus.dart';
=======
>>>>>>> 211da92b46f7eb68726a2203735fa2325c802dd1

class newhome extends StatelessWidget {
  const newhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
        backgroundColor: Color.fromARGB(255, 231, 167, 89),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
=======
        backgroundColor: const Color.fromARGB(255, 231, 167, 89),
        body: SafeArea(
          child: Column(
            children: [
              const Padding(
>>>>>>> 211da92b46f7eb68726a2203735fa2325c802dd1
                padding: EdgeInsets.only(
                  right: 110,
                  left: 30,
                  top: 30,
                ),
<<<<<<< HEAD
                child: const Text(
=======
                child: Text(
>>>>>>> 211da92b46f7eb68726a2203735fa2325c802dd1
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
<<<<<<< HEAD
              Padding(
=======
              const Padding(
>>>>>>> 211da92b46f7eb68726a2203735fa2325c802dd1
                padding: EdgeInsets.only(
                  top: 30,
                  bottom: 20,
                ),
              ),
              Padding(
<<<<<<< HEAD
                  padding: EdgeInsets.only(
=======
                  padding: const EdgeInsets.only(
>>>>>>> 211da92b46f7eb68726a2203735fa2325c802dd1
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
<<<<<<< HEAD
                  padding: EdgeInsets.only(
=======
                  padding: const EdgeInsets.only(
>>>>>>> 211da92b46f7eb68726a2203735fa2325c802dd1
                    bottom: 20,
                    top: 20,
                    left: 50,
                  ),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
<<<<<<< HEAD
                                builder: ((context) => course())));
                      },
                      child: const Text(' Courses '))),
              Padding(
                  padding: EdgeInsets.only(
=======
                                builder: ((context) => const course())));
                      },
                      child: const Text(' Courses '))),
              Padding(
                  padding: const EdgeInsets.only(
>>>>>>> 211da92b46f7eb68726a2203735fa2325c802dd1
                    bottom: 20,
                    left: 50,
                  ),
                  child: ElevatedButton(
                      onPressed: () {
<<<<<<< HEAD
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) => about())));
=======
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const about())));
>>>>>>> 211da92b46f7eb68726a2203735fa2325c802dd1
                      },
                      child: const Text('About us'))),
            ],
          ),
        ));
  }
}
