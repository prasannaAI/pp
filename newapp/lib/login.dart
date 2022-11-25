// ignore_for_file: deprecated_member_use, camel_case_types

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:newapp/homenew.dart';
import 'package:newapp/main.dart';
import 'package:newapp/signup.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late String _email, _password;

  void signIn(BuildContext context) async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: _email, password: _password)
        .then((authUser) {
      if (authUser.user != null) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const newhome()));
      }
    }).catchError((e) {
      Fluttertoast.showToast(msg: e!.message);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 100.h),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(250, 251, 251, 255),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(blurRadius: 20.r),
                        ]),
                    child: CircleAvatar(
                      radius: 250.r,
                      backgroundImage: AssetImage("assets/logo.jpg"),
                    ),
                  ),
                ),
                Container(
                  width: 1200.w,
                  height: 850.h,
                  margin:
                      EdgeInsets.symmetric(horizontal: 40.w, vertical: 100.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.r),
                      color: Theme.of(context).scaffoldBackgroundColor,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 15.r,
                          spreadRadius: 5.r,
                          color: Color.fromARGB(253, 51, 51, 49),
                        ),
                      ]),
                  child: SizedBox(
                    height: 900.h,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 30.h, horizontal: 50.w),
                      child: Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFormField(
                              style: TextStyle(fontSize: 35.sp),
                              keyboardType: TextInputType.emailAddress,
                              onSaved: (value) {
                                _email = value!;
                              },
                              validator: ((email) {
                                if (email!.isEmpty) {
                                  return "Please enter email";
                                } else if (!RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(email)) {
                                  return "its not valid email";
                                }
                                return null;
                              }),
                              decoration: InputDecoration(
                                  prefixIcon: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 30.w),
                                    child: Icon(
                                      Icons.email,
                                      color: Colors.orange,
                                      size: 70.r,
                                    ),
                                  ),
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  labelStyle: TextStyle(
                                      fontFamily: 'Poppins-Light.ttf',
                                      fontSize: 30.sp,
                                      color: Colors.black),
                                  labelText: "EMAIL ADDRESS"),
                            ),
                            SizedBox(
                              height: 80.h,
                            ),
                            TextFormField(
                              style: TextStyle(fontSize: 35.sp),
                              obscureText: true,
                              keyboardType: TextInputType.visiblePassword,
                              onSaved: (value) {
                                _password = value!;
                              },
                              validator: (password) {
                                if (password!.isEmpty) {
                                  return "Please enter a password";
                                } else if (password.length < 8 ||
                                    password.length > 12) {
                                  return "please enter between 8 to 12 characters";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  prefixIcon: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 30.w),
                                    child: Icon(
                                      Icons.password,
                                      color: Colors.orange,
                                      size: 70.r,
                                    ),
                                  ),
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  labelStyle: TextStyle(
                                      fontFamily: 'Poppins-Light.ttf',
                                      fontSize: 30.sp,
                                      color: Colors.black),
                                  labelText: "PASSWORD"),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                primary: Color.fromARGB(255, 255, 255, 255),
                              ),
                              onPressed: () {},
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 30.h),
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                      fontSize: 28.sp,
                                      color: Color.fromARGB(236, 255, 136, 39)),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 300.w),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50.r),
                                        ),
                                        width: 300.w,
                                        height: 150.h,
                                        child: Padding(
                                          padding: EdgeInsets.all(11.0),
                                          child: ElevatedButton(
                                            onPressed: () {
                                              if (formKey.currentState!
                                                  .validate()) {
                                                (formKey.currentState?.save());
                                                signIn(context);
                                              } else {
                                                Fluttertoast.showToast(
                                                    msg:
                                                        'Please Fill the User Data');
                                              }
                                            },
                                            style: ElevatedButton.styleFrom(
                                                primary: Color.fromARGB(
                                                    236, 255, 136, 39)),
                                            child: Text(
                                              "LOGIN",
                                              style: TextStyle(
                                                fontSize: 25.sp,
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Container(
                                    child: Text(
                                      'Don\'t Have An Account?..',
                                      style: TextStyle(
                                        fontSize: 28.sp,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                  ),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    primary: Color.fromARGB(255, 250, 251, 252),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => signup()));
                                  },
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.0),
                                    child: Text(
                                      'SIGNUP',
                                      style: TextStyle(
                                          fontSize: 28.sp,
                                          color: Color.fromARGB(
                                              236, 255, 136, 39)),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
