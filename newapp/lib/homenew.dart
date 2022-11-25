import 'package:flutter/material.dart';
import 'package:newapp/aboutus.dart';
import 'package:newapp/courses.dart';
import 'package:newapp/profile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class newhome extends StatefulWidget {
  const newhome({super.key});

  @override
  State<newhome> createState() => _newhomeState();
}

class _newhomeState extends State<newhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: SafeArea(
            child: Center(
                child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 200.h),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(250, 251, 251, 255),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(blurRadius: 20.r),
                    ]),
                child: CircleAvatar(
                  radius: 300.r,
                  backgroundImage: AssetImage("assets/logo.jpg"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 0.h,
                bottom: 90.h,
              ),
            ),
            TextButton(
              style:
                  TextButton.styleFrom(primary: Color.fromARGB(235, 0, 0, 0)),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => course()));
              },
              child: Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 1.0.h, horizontal: 200.w),
                child: TweenAnimationBuilder(
                  curve: Curves.bounceOut,
                  duration: Duration(seconds: 2),
                  tween: Tween<double>(begin: 12.0, end: 30.0),
                  builder: (BuildContext context, double value, Widget? child) {
                    return Text('Courses',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 80.sp));
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: TextButton(
                style:
                    TextButton.styleFrom(primary: Color.fromARGB(235, 0, 0, 0)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EditProfilePage()));
                },
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 200.w),
                  child: TweenAnimationBuilder(
                    curve: Curves.bounceOut,
                    duration: Duration(seconds: 2),
                    tween: Tween<double>(begin: 12.0, end: 30.0),
                    builder:
                        (BuildContext context, double value, Widget? child) {
                      return Text('Profile',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 80.sp));
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: TextButton(
                style:
                    TextButton.styleFrom(primary: Color.fromARGB(235, 0, 0, 0)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => about()));
                },
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 200.h),
                  child: TweenAnimationBuilder(
                    curve: Curves.bounceOut,
                    duration: Duration(seconds: 2),
                    tween: Tween<double>(begin: 12.0, end: 30.0),
                    builder:
                        (BuildContext context, double value, Widget? child) {
                      return Text('About Us',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 80.sp));
                    },
                  ),
                ),
              ),
            ),
          ],
        ))));
  }
}
