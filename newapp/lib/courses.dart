import 'package:flutter/material.dart';
import 'package:newapp/video.dart';

// ignore: camel_case_types
class course extends StatelessWidget {
  const course({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 231, 167, 89),
        body: SafeArea(
            child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                left: 130,
                top: 10,
              ),
              child: Text(
                'Explore Courses',
                style: TextStyle(
                  fontFamily: 'Poppins-Black.ttf',
                  fontSize: 20,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 10,
                top: 20,
                bottom: 10,
              ),
              child: Text(
                'App Development :',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontFamily: 'Poppins-Black.ttf',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Align(
                    widthFactor: 1.2,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    const VideoPlayerApp())));
                      },
                      child: Container(
                        width: 200,
                        height: 190,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: const Color.fromRGBO(118, 130, 197, 1.000)),
                        child: Stack(
                          children: [
                            ListView(
                              children: const [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.elliptical(20, 20),
                                      topRight: Radius.elliptical(20, 20)),
                                  child: Image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      "assets/Flutter.jpg",
                                    ),
                                    height: 130,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 20,
                                  ),
                                  child: Text(
                                    'Flutter',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    widthFactor: 1.5,
                    heightFactor: 1.1,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    const VideoPlayerApp())));
                      },
                      child: Container(
                        height: 190,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromRGBO(118, 130, 197, 1.000),
                        ),
                        child: Stack(
                          children: [
                            ListView(
                              children: const [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.elliptical(20, 20),
                                      topRight: Radius.elliptical(20, 20)),
                                  child: Image(
                                    fit: BoxFit.fill,
                                    image: AssetImage("assets/flutterflow.jpg"),
                                    height: 130,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 20,
                                  ),
                                  child: Text(
                                    'Flutter Flow',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    widthFactor: 1.2,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    const VideoPlayerApp())));
                      },
                      child: Container(
                        height: 190,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromRGBO(118, 130, 197, 1.000),
                        ),
                        child: Stack(
                          children: [
                            ListView(
                              children: const [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.elliptical(20, 20),
                                      topRight: Radius.elliptical(20, 20)),
                                  child: Image(
                                    fit: BoxFit.fill,
                                    image: AssetImage("assets/firebase.jpg"),
                                    height: 130,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 20,
                                  ),
                                  child: Text(
                                    'Figma',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 10,
                top: 20,
                bottom: 10,
              ),
              child: Text(
                'Web Development :',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontFamily: 'Poppins-Black.ttf',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Align(
                    widthFactor: 1.2,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    const VideoPlayerApp())));
                      },
                      child: Container(
                        height: 190,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromRGBO(118, 130, 197, 1.000),
                        ),
                        child: Stack(
                          children: [
                            ListView(
                              children: const [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.elliptical(20, 20),
                                      topRight: Radius.elliptical(20, 20)),
                                  child: Image(
                                    fit: BoxFit.fill,
                                    image: AssetImage("assets/react.jpg"),
                                    height: 130,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 20,
                                  ),
                                  child: Text(
                                    'React JS',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    widthFactor: 1.5,
                    heightFactor: 1.2,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    const VideoPlayerApp())));
                      },
                      child: Container(
                        height: 190,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromRGBO(118, 130, 197, 1.000),
                        ),
                        child: Stack(
                          children: [
                            ListView(
                              children: const [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.elliptical(20, 20),
                                      topRight: Radius.elliptical(20, 20)),
                                  child: Image(
                                    fit: BoxFit.fill,
                                    image: AssetImage("assets/nodejs.jpg"),
                                    height: 130,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 20,
                                  ),
                                  child: Text(
                                    'Node JS',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    widthFactor: 1.2,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    const VideoPlayerApp())));
                      },
                      child: Container(
                        height: 190,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromRGBO(118, 130, 197, 1.000),
                        ),
                        child: Stack(
                          children: [
                            ListView(
                              children: const [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.elliptical(20, 20),
                                      topRight: Radius.elliptical(20, 20)),
                                  child: Image(
                                    fit: BoxFit.fill,
                                    image: AssetImage("assets/javascript.jpg"),
                                    height: 130,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 20,
                                  ),
                                  child: Text(
                                    'Java Script',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 10,
                top: 20,
                bottom: 10,
              ),
              child: Text(
                'Cyber Security :',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontFamily: 'Poppins-Black.ttf',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5),
              ),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Row(
                      children: [
                        Align(
                          widthFactor: 1.2,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          const VideoPlayerApp())));
                            },
                            child: Container(
                              height: 190,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color:
                                    const Color.fromRGBO(118, 130, 197, 1.000),
                              ),
                              child: Stack(
                                children: [
                                  ListView(
                                    children: const [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.elliptical(20, 20),
                                            topRight:
                                                Radius.elliptical(20, 20)),
                                        child: Image(
                                          fit: BoxFit.fill,
                                          image: AssetImage("assets/ch.jpg"),
                                          height: 130,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 20,
                                        ),
                                        child: Text(
                                          'Ethical Hacking',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          widthFactor: 1.5,
                          heightFactor: 1.2,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          const VideoPlayerApp())));
                            },
                            child: Container(
                              height: 190,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color:
                                    const Color.fromRGBO(118, 130, 197, 1.000),
                              ),
                              child: Stack(
                                children: [
                                  ListView(
                                    children: const [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.elliptical(20, 20),
                                            topRight:
                                                Radius.elliptical(20, 20)),
                                        child: Image(
                                          fit: BoxFit.fill,
                                          image: AssetImage("assets/pent.jpg"),
                                          height: 130,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 20,
                                        ),
                                        child: Text(
                                          'Pentesting',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          widthFactor: 1.2,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          const VideoPlayerApp())));
                            },
                            child: Container(
                              height: 190,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color:
                                    const Color.fromRGBO(118, 130, 197, 1.000),
                              ),
                              child: Stack(
                                children: [
                                  ListView(
                                    children: const [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.elliptical(20, 20),
                                            topRight:
                                                Radius.elliptical(20, 20)),
                                        child: Image(
                                          fit: BoxFit.fill,
                                          image: AssetImage("assets/ns.jpg"),
                                          height: 130,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 20,
                                        ),
                                        child: Text(
                                          'Hardware Security',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
          ],
        )));
  }
}
