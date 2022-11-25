import 'package:flutter/material.dart';
import 'package:newapp/login.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 250.w, vertical: 400.h),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(250, 251, 251, 255),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(blurRadius: 20.r),
                    ]),
                child: CircleAvatar(
                  radius: 300.r,
                  backgroundImage: AssetImage(
                    "assets/logo.jpg",
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
