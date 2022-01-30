import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:mlm_dashboard/Screens/signUp_new.dart';
import 'package:mlm_dashboard/Screens/signup.dart';
import 'package:mlm_dashboard/colors.dart';
import 'package:mlm_dashboard/widgets/appBar/app_bar.dart';
//import 'package:mlm_dashboard/widgets/login&signup/custombutton.dart';
import 'package:mlm_dashboard/widgets/login&signup/customdecoration.dart';
import 'package:mlm_dashboard/widgets/login&signup/signUpbutton.dart';
import 'package:email_validator/email_validator.dart' as email;
import 'package:http/http.dart' as http;

import '../main.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var password = "";

  Future _loginInfo() async {
    try {
      const url = 'http://localhost:3000/auth/login';

      final response = await http.post(Uri.parse(url), body: {
        "username": userNameController.text,
        "password": passwordController.text,
      });

      final responseBody = jsonDecode(response.body);
      print(responseBody);

      var box = await Hive.openBox('auth');
      box.put('access_token', responseBody['access_token']);
      box.close();
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 1070,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/login_final_2.png'),
                  fit: BoxFit.cover),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(
                //   height: 10,
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //SizedBox(width: 15),
                    Container(
                      height: 120,
                      width: 215,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                        ),
                        color: Colors.indigo[400],
                        image: DecorationImage(
                          image:
                              AssetImage('assets/images/Logo_Text_Final.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: double.infinity,
            width: 466,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 40, right: 40, top: 100, bottom: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        "Welcome to MLM!",
                        style:
                            TextStyle(fontSize: 26, color: Colors.indigo[400]),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.login),
                    ],
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Please Sign-in to your account and start the adventure.",
                    style: TextStyle(color: divider, fontSize: 16),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          controller: userNameController,
                          keyboardType: TextInputType.emailAddress,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: CustomDecoration()
                              .customDecoration('Email', 'Email'),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Enter Your Email";
                            } else if (value.isNotEmpty) {
                              final check =
                                  email.EmailValidator.validate(value);
                              if (!check) {
                                return "Invalid Email";
                              } else {
                                return null;
                              }
                            }
                            return '';
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        //  TEXTFORM PASSWORD FIELD
                        TextFormField(
                          controller: passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          obscureText: true,
                          decoration: CustomDecoration()
                              .customDecoration('Password', 'Password'),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Enter your Password";
                            }

                            if (value.length < 8) {
                              return "Password should be at least 8 or more characters";
                            }
                            //  else if (!value.contains(RegExp(r'[A-Z]'))) {
                            //   return "Password should cointain at least 1 Capital characters";
                            // }
                            else if (!value.contains(RegExp(r'[a-z]'))) {
                              return "Password should cointain at least 1 small characters";
                            }
                            //  else if (!value.contains(RegExp(
                            //     r'[!\@\#\$\%\^\&\*\(\)\_\-\+\=\/\<\>\\ \\]'))) {
                            //   return "Password should cointain at least 1 Special character";
                            // }
                            else {
                              password = value;
                              return null;
                            }
                          },
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Remember Me",
                          style: TextStyle(color: divider, fontSize: 14),
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                          height: 45,
                          width: double.infinity,
                          child: CustomButton(
                            msg: "Logged in",
                            formKey: _formKey,
                            buttontext: "Sign In",
                            press: () async {
                              if (userNameController.text.isNotEmpty &&
                                  passwordController.text.isNotEmpty) {
                                _loginInfo();
                                var box = await Hive.openBox('auth');

                                if (box.get('access_token') != null) {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MyHomePage()));
                                }

                                box.close();
                                // final prefs =
                                //     await SharedPreferences.getInstance();
                                // prefs.setString(
                                //   'User Name',
                                //   userNameController.text,
                                // );

                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "New on our platform?",
                        style: TextStyle(color: divider, fontSize: 18),
                      ),
                      SizedBox(width: 10),
                      TextButton(
                        child: Text(
                          "Click here",
                          style: TextStyle(
                              color: Colors.indigo[400], fontSize: 18),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignupPage()));
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 0.5,
                        color: divider,
                        child: Divider(
                          endIndent: 180,
                        ),
                      ),
                      SizedBox(width: 6.5),
                      Text("or"),
                      SizedBox(width: 6.5),
                      Container(
                        height: 0.5,
                        color: divider,
                        child: Divider(
                          indent: 180,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),

                  //
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
