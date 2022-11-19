import 'package:flutter/material.dart';
import 'package:newapp/login.dart';

class openpage extends StatefulWidget {
  const openpage({Key? key}) : super(key: key);

  @override
  State<openpage> createState() => _openpageState();
}

class _openpageState extends State<openpage> {
  @override
  void initState() {
    super.initState();
    _navigatetoopenpage();
  }

  _navigatetoopenpage() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 167, 89),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 55,
              top: 120,
            ),
            child: CircleAvatar(
              radius: 150,
              backgroundImage: AssetImage("assets/logo.jpg"),
            ),
          ),
        ],
      )),
    );
  }
}
