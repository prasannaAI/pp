import 'package:flutter/material.dart';
import 'package:newapp/video.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newapp/homenew.dart';

// ignore: camel_case_types
class course extends StatelessWidget {
  const course({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => newhome())));
            },
            icon: Icon(
              Icons.arrow_back,
              size: 80.r,
              color: Colors.orange,
            ),
          ),
          toolbarHeight: 200.h,
          title: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
            ),
            child: Text(
              ' Explore Courses ',
              style: TextStyle(fontSize: 50.sp, color: Colors.black87),
            ),
          ),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 1,
        ),
        body: SafeArea(
            child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 50.h),
              child: Text(
                ' App Development :',
                style: TextStyle(
                    fontFamily: 'Poppins-Black.ttf',
                    fontSize: 50.sp,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 600.h,
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0.r),
                        color: Colors.grey.shade200,
                      ),
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
                                width: 450.w,
                                height: 400.h,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 25.r, spreadRadius: 5.r)
                                  ],
                                  borderRadius: BorderRadius.circular(50.0.r),
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                ),
                                child: Stack(
                                  children: [
                                    ListView(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topLeft:
                                                  Radius.elliptical(50.r, 50.r),
                                              topRight: Radius.elliptical(
                                                  50.r, 50.r)),
                                          child: Image(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                              "assets/Flutter1.png",
                                            ),
                                            height: 300.h,
                                            width: 150.w,
                                          ),
                                        ),
                                        Center(
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                              vertical: 15.h,
                                            ),
                                            child: Text(
                                              'Flutter',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 50.sp,
                                              ),
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
                                height: 400.h,
                                width: 450.w,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 25.r, spreadRadius: 5.r)
                                  ],
                                  borderRadius: BorderRadius.circular(50.0.r),
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                ),
                                child: Stack(
                                  children: [
                                    ListView(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topLeft:
                                                  Radius.elliptical(50.r, 50.r),
                                              topRight: Radius.elliptical(
                                                  50.r, 50.r)),
                                          child: Image(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                "assets/flutterflow.jpg"),
                                            height: 300.h,
                                            width: 150.w,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 15.h,
                                          ),
                                          child: Text(
                                            'Flutter Flow',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 50.sp,
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
                                height: 400.h,
                                width: 450.w,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 25.r, spreadRadius: 5.r)
                                  ],
                                  borderRadius: BorderRadius.circular(50.0.r),
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                ),
                                child: Stack(
                                  children: [
                                    ListView(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topLeft:
                                                  Radius.elliptical(50.r, 50.r),
                                              topRight: Radius.elliptical(
                                                  50.r, 50.r)),
                                          child: Image(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                "assets/firebasenew.png"),
                                            height: 300.h,
                                            width: 150.w,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 15.h,
                                          ),
                                          child: Text(
                                            'Firebase',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 50.sp,
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
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 50.h),
              child: Text(
                'Web Development :',
                style: TextStyle(
                    fontFamily: 'Poppins-Black.ttf',
                    fontSize: 50.sp,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 20.h,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  color: Colors.white70,
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0.r),
                        color: Colors.grey.shade200,
                      ),
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
                                height: 400.h,
                                width: 450.w,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 25.r, spreadRadius: 5.r)
                                    ],
                                    borderRadius: BorderRadius.circular(50.0.r),
                                    color: Theme.of(context)
                                        .scaffoldBackgroundColor),
                                child: Stack(
                                  children: [
                                    ListView(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topLeft:
                                                  Radius.elliptical(50.r, 50.r),
                                              topRight: Radius.elliptical(
                                                  50.r, 50.r)),
                                          child: Image(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                "assets/reactlogo.png"),
                                            height: 300.h,
                                            width: 150.w,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 15.h,
                                          ),
                                          child: Text(
                                            'React JS',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 50.sp,
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
                                height: 400.h,
                                width: 450.w,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 25.r, spreadRadius: 5.r)
                                    ],
                                    borderRadius: BorderRadius.circular(50.0.r),
                                    color: Theme.of(context)
                                        .scaffoldBackgroundColor),
                                child: Stack(
                                  children: [
                                    ListView(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topLeft:
                                                  Radius.elliptical(50.r, 50.r),
                                              topRight: Radius.elliptical(
                                                  50.r, 50.r)),
                                          child: Image(
                                            fit: BoxFit.fill,
                                            image:
                                                AssetImage("assets/nodejs.jpg"),
                                            height: 300.h,
                                            width: 150.w,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 15.h,
                                          ),
                                          child: Text(
                                            'Node JS',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 50.sp,
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
                                height: 400.h,
                                width: 450.w,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 25.r, spreadRadius: 5.r)
                                    ],
                                    borderRadius: BorderRadius.circular(50.0.r),
                                    color: Theme.of(context)
                                        .scaffoldBackgroundColor),
                                child: Stack(
                                  children: [
                                    ListView(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topLeft:
                                                  Radius.elliptical(50.r, 50.r),
                                              topRight: Radius.elliptical(
                                                  50.r, 50.r)),
                                          child: Image(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                "assets/javascript.jpg"),
                                            height: 300.h,
                                            width: 150.w,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 15.h,
                                          ),
                                          child: Text(
                                            'Java Script',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 50.sp,
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
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 50.h),
              child: Text(
                'Cyber Security :',
                style: TextStyle(
                    fontFamily: 'Poppins-Black.ttf',
                    fontSize: 50.sp,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 20.h,
              ),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    color: Colors.white70,
                    child: Padding(
                      padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0.r),
                          color: Colors.grey.shade200,
                        ),
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
                                  height: 400.h,
                                  width: 450.w,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 25.r, spreadRadius: 5.r)
                                      ],
                                      borderRadius:
                                          BorderRadius.circular(50.0.r),
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor),
                                  child: Stack(
                                    children: [
                                      ListView(
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.elliptical(
                                                    50.r, 50.r),
                                                topRight: Radius.elliptical(
                                                    50.r, 50.r)),
                                            child: Image(
                                              fit: BoxFit.fill,
                                              image:
                                                  AssetImage("assets/ch.jpg"),
                                              height: 300.h,
                                              width: 150.w,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                              vertical: 15.h,
                                            ),
                                            child: Text(
                                              'Ethical Hacking',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 50.sp,
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
                                  height: 400.h,
                                  width: 450.w,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 25.r, spreadRadius: 5.r)
                                      ],
                                      borderRadius:
                                          BorderRadius.circular(50.0.r),
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor),
                                  child: Stack(
                                    children: [
                                      ListView(
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.elliptical(
                                                    50.r, 50.r),
                                                topRight: Radius.elliptical(
                                                    50.r, 50.r)),
                                            child: Image(
                                              fit: BoxFit.fill,
                                              image:
                                                  AssetImage("assets/pent.jpg"),
                                              height: 300.h,
                                              width: 150.w,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                              vertical: 15.h,
                                            ),
                                            child: Text(
                                              'Pentesting',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 50.sp,
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
                                  height: 400.h,
                                  width: 450.w,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 25.r, spreadRadius: 5.r)
                                      ],
                                      borderRadius:
                                          BorderRadius.circular(50.0.r),
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor),
                                  child: Stack(
                                    children: [
                                      ListView(
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.elliptical(
                                                    50.r, 50.r),
                                                topRight: Radius.elliptical(
                                                    50.r, 50.r)),
                                            child: Image(
                                              fit: BoxFit.fill,
                                              image:
                                                  AssetImage("assets/ns.jpg"),
                                              height: 300.h,
                                              width: 150.w,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                              vertical: 15.h,
                                            ),
                                            child: Text(
                                              'Hardware Security',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 50.sp,
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
                    ),
                  )),
            ),
          ],
        )));
  }
}
