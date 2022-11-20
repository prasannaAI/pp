import 'package:flutter/material.dart';
import 'package:newapp/video.dart';

class course extends StatelessWidget {
  const course({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 167, 89),
      body: SafeArea(
          child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 10,
            ),
            child: Text('Explore Courses'),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 10,
            ),
            child: Text('data1'),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Align(
                  widthFactor: 1.2,
                  child: Container(
                    height: 230,
                    width: 200,
                    color: Colors.green,
                    child: ListView(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => video())));
                          },
                          child: Image(image: AssetImage("assets/logo.jpg")),
                        ),
                        Text(
                          'About1',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  widthFactor: 1.5,
                  heightFactor: 1.1,
                  child: Container(
                    height: 130,
                    width: 100,
                    color: Colors.red,
                    child: ListView(
                      children: [
                        Image(image: AssetImage("assets/logo.jpg")),
                        Text(
                          'About1',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  widthFactor: 1.2,
                  child: Container(
                    height: 130,
                    width: 100,
                    color: Colors.red,
                    child: ListView(
                      children: [
                        Image(image: AssetImage("assets/logo.jpg")),
                        Text(
                          'About1',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 10,
            ),
            child: Text('data2'),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Align(
                  widthFactor: 1.2,
                  heightFactor: 1.1,
                  child: Container(
                    height: 130,
                    width: 100,
                    color: Colors.red,
                    child: ListView(
                      children: [
                        Image(image: AssetImage("assets/logo.jpg")),
                        Text(
                          'About1',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  widthFactor: 1.5,
                  child: Container(
                    height: 130,
                    width: 100,
                    color: Colors.red,
                    child: ListView(
                      children: [
                        Image(image: AssetImage("assets/logo.jpg")),
                        Text(
                          'About1',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  widthFactor: 1.2,
                  child: Container(
                    height: 230,
                    width: 200,
                    color: Colors.red,
                    child: ListView(
                      children: [
                        Image(image: AssetImage("assets/logo.jpg")),
                        Text(
                          'About1',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 10,
            ),
            child: Text('data3'),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Row(
                  children: [
                    Align(
                      widthFactor: 1.2,
                      heightFactor: 1.2,
                      child: Container(
                        height: 230,
                        width: 200,
                        color: Colors.red,
                        child: ListView(
                          children: [
                            Image(image: AssetImage("assets/logo.jpg")),
                            Text(
                              'About1',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      widthFactor: 1.5,
                      child: Container(
                        height: 130,
                        width: 100,
                        color: Colors.red,
                        child: ListView(
                          children: [
                            Image(image: AssetImage("assets/logo.jpg")),
                            Text(
                              'About1',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      widthFactor: 1.2,
                      child: Container(
                        height: 130,
                        width: 100,
                        color: Colors.red,
                        child: ListView(
                          children: [
                            Image(image: AssetImage("assets/logo.jpg")),
                            Text(
                              'About1',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
