import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:newapp/homenew.dart';
import 'package:newapp/openpage.dart';
import 'dart:async';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final user = FirebaseAuth.instance.currentUser!;
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 80.r,
            color: Colors.orange,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => newhome())));
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.logout,
              size: 80.r,
              color: Colors.orange,
            ),
            onPressed: () {
              Future.delayed(Duration(seconds: 3), () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => openpage())));
              });
            },
          ),
        ],
      ),
      body: SafeArea(
        child: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection("userDatas")
                .where("uid", isEqualTo: user.uid)
                .snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> Snapshot) {
              if (Snapshot.hasData) {
                return ListView.builder(
                    itemCount: Snapshot.data!.docs.length,
                    shrinkWrap: true,
                    itemBuilder: (context, i) {
                      var data = Snapshot.data!.docs[i];
                      return Container(
                        padding:
                            const EdgeInsets.only(left: 16, top: 25, right: 16),
                        child: GestureDetector(
                          onTap: () {
                            FocusScope.of(context).unfocus();
                          },
                          child: Column(
                            children: [
                              Text(
                                " Profile",
                                style: TextStyle(
                                    fontSize: 70.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                              Center(
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 350.w,
                                      height: 350.h,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 10.w,
                                              color: Theme.of(context)
                                                  .scaffoldBackgroundColor),
                                          boxShadow: [
                                            BoxShadow(
                                                spreadRadius: 5.r,
                                                blurRadius: 30.r,
                                                color: Colors.black
                                                    .withOpacity(0.1),
                                                offset: const Offset(0, 10))
                                          ],
                                          shape: BoxShape.circle,
                                          image: const DecorationImage(
                                              fit: BoxFit.cover,
                                              image:
                                                  AssetImage("assets/nc.jpg"))),
                                    ),
                                    Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: Container(
                                          height: 130.h,
                                          width: 130.w,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              width: 10.w,
                                              color: Theme.of(context)
                                                  .scaffoldBackgroundColor,
                                            ),
                                            color: Colors.orange,
                                          ),
                                          child: const Icon(
                                            Icons.camera_alt_outlined,
                                            color: Colors.white,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 100.h,
                              ),
                              buildTextField("Full Name", data['name'], false),
                              buildTextField("E-mail", data['email'], false),
                              buildTextField(
                                  "phone number", data['phone'], false),
                              buildTextField1("click to show password",
                                  data['password'], true),
                              SizedBox(
                                height: 35.h,
                              ),
                            ],
                          ),
                        ),
                      );
                    });
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }),
      ),
    );
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: EdgeInsets.only(bottom: 70.h),
      child: TextField(
        style: TextStyle(fontSize: 45.sp),
        readOnly: true,
        obscureText: isPasswordTextField ? showPassword : false,
        decoration: InputDecoration(
            suffixIcon: isPasswordTextField
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    icon: const Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
                  )
                : null,
            contentPadding: EdgeInsets.only(bottom: 3.h),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 40.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
    );
  }

  Widget buildTextField1(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: EdgeInsets.only(bottom: 35.0.h),
      child: TextField(
        readOnly: true,
        style: TextStyle(
          fontSize: 35.sp,
        ),
        obscureText: isPasswordTextField ? showPassword : false,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 40.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
    );
  }
}
