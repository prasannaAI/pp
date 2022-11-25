import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newapp/homenew.dart';

class about extends StatelessWidget {
  const about({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => newhome())));
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
            'About Study Buzz ',
            style: TextStyle(fontSize: 50.sp, color: Colors.black87),
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 80.h,
                ),
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
                  padding: EdgeInsets.symmetric(
                    vertical: 0.h,
                  ),
                  child: Text.rich(TextSpan(
                      text: 'Study ',
                      style: TextStyle(
                        fontSize: 100.r,
                      ),
                      children: <InlineSpan>[
                        TextSpan(
                            text: 'Buzz',
                            style: TextStyle(
                              fontSize: 80.r,
                              color: Colors.orange,
                            ))
                      ]))),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 90.h, horizontal: 40.w),
                child: Container(
                  width: 1000.w,
                  height: 450.h,
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(blurRadius: 20.r)],
                      borderRadius: BorderRadius.circular(20.0.r),
                      color: Color.fromARGB(255, 246, 245, 244)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 30.h),
                    child: Text(
                      'The Study Buzz makes education accessible to everyone. we are an independent, not-for-profit network that offers free online courses for students worldwide. We also provide affordable ways for learners to gain academic credit towards qualifications from recognised institutions.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40.sp,
                        letterSpacing: 1,
                        fontFamily: 'Poppins-Light.ttf',
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
