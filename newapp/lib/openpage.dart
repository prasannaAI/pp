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
<<<<<<< HEAD
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => login()));
=======
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const login()));
>>>>>>> 211da92b46f7eb68726a2203735fa2325c802dd1
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      backgroundColor: Color.fromARGB(255, 231, 167, 89),
      body: SafeArea(
          child: Column(
        children: [
=======
      backgroundColor: const Color.fromARGB(255, 231, 167, 89),
      body: SafeArea(
          child: Column(
        children: const [
>>>>>>> 211da92b46f7eb68726a2203735fa2325c802dd1
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
