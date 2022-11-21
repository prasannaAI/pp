// ignore_for_file: deprecated_member_use, camel_case_types

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:newapp/homenew.dart';
import 'package:newapp/main.dart';
import 'package:newapp/signup.dart';
import 'package:google_fonts/google_fonts.dart';

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
<<<<<<< HEAD
      backgroundColor: Color.fromARGB(255, 231, 167, 89),
=======
      backgroundColor: const Color.fromARGB(255, 231, 167, 89),
>>>>>>> 211da92b46f7eb68726a2203735fa2325c802dd1
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "LOGIN PAGE",
                  style:
                      TextStyle(fontFamily: 'Poppins-Black.ttf', fontSize: 20),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("assets/logo.jpg"),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(11),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey[200],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
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
                            decoration: const InputDecoration(
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Colors.orange,
                                ),
                                labelStyle: TextStyle(
                                    fontFamily: 'Poppins-Light.ttf',
                                    fontSize: 15,
                                    color: Colors.black),
                                labelText: "EMAIL ADDRESS"),
                          ),
                          TextFormField(
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
                            decoration: const InputDecoration(
                                prefixIcon: Icon(
                                  Icons.password,
                                  color: Color.fromARGB(255, 255, 153, 0),
                                ),
                                labelStyle: TextStyle(
                                    fontFamily: 'Poppins-Light.ttf',
                                    fontSize: 15,
                                    color: Colors.black),
                                labelText: "PASSWORD"),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
<<<<<<< HEAD
                              primary: Color.fromARGB(255, 255, 255, 255),
=======
                              primary: const Color.fromARGB(255, 255, 255, 255),
>>>>>>> 211da92b46f7eb68726a2203735fa2325c802dd1
                            ),
                            onPressed: () {},
                            child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
<<<<<<< HEAD
                                'Forgot Password?',
=======
                                'Forget Password?',
>>>>>>> 211da92b46f7eb68726a2203735fa2325c802dd1
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 138, 10, 102),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
<<<<<<< HEAD
                                    width: 340,
=======
                                    width: 366,
>>>>>>> 211da92b46f7eb68726a2203735fa2325c802dd1
                                    height: 75,
                                    child: Padding(
                                      padding: const EdgeInsets.all(11.0),
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
<<<<<<< HEAD
                                            primary: Color.fromARGB(
=======
                                            primary: const Color.fromARGB(
>>>>>>> 211da92b46f7eb68726a2203735fa2325c802dd1
                                                236, 255, 136, 39)),
                                        child: const Text(
                                          "LOGIN",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontWeight: FontWeight.bold,
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
                                  child: const Text(
                                    'Dont Have An Account?..',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ),
                                ),
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  primary:
                                      const Color.fromARGB(255, 250, 251, 252),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => signup()));
                                },
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8.0),
                                  child: Text(
                                    'SIGNUP',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color.fromARGB(255, 138, 10, 102),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
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
