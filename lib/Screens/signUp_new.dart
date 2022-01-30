import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:email_validator/email_validator.dart' as email;
import 'package:hive/hive.dart';
import 'package:mlm_dashboard/Screens/login_new.dart';
//import 'package:mlm_dashboard/widgets/login&signup/custombutton.dart';
import 'package:mlm_dashboard/widgets/login&signup/customdecoration.dart';
import 'package:mlm_dashboard/widgets/login&signup/signUpbutton.dart';
import 'package:http/http.dart' as http;

import '../colors.dart';
import '../main.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();
  final TextEditingController referenceIdcontroller = TextEditingController();
  var password = "";

  Future signupInfo() async {
    try {
      var url = Uri.parse(
          'http://localhost:3000/auth/SignUp/${emailController.text}/${passwordController.text}/${userNameController.text}/${referenceIdcontroller.text}');
      final response = await http.post(url);

      final extractedResponse = jsonDecode(response.body);

      print(extractedResponse);
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
              image: AssetImage('assets/images/signUp.png'),
              fit: BoxFit.cover,
            ),
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
                        image: AssetImage('assets/images/Logo_Text_Final.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  // FlutterLogo(
                  //   size: 30,
                  // ),
                  // SizedBox(width: 10),
                  // Text(
                  //   "MULTI-LEVEL MARKETING",
                  //   style: TextStyle(color: Colors.indigo[400], fontSize: 30),
                  // )
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
              left: 40,
              right: 40,
              top: 60,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Adventure starts here",
                      style: TextStyle(fontSize: 26, color: Colors.indigo[400]),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.clean_hands),
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  "Make your app manangement easy and fun!",
                  style: TextStyle(color: divider, fontSize: 16),
                ),
                SizedBox(
                  height: 15,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 1st TextFiled Full name
                      TextFormField(
                        controller: userNameController,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r'[\\ \\a-zA-Z]')),
                          FilteringTextInputFormatter.deny(RegExp(r'[0-9]'))
                        ],
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.name,
                        decoration: CustomDecoration()
                            .customDecoration('User Name', 'Name'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Enter your Name";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      // 2nd Text form field = Email
                      TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: CustomDecoration()
                            .customDecoration('Email', 'Email'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Enter Your Email";
                          } else if (value.isNotEmpty) {
                            final check = email.EmailValidator.validate(value);
                            if (!check) {
                              return "Invalid Email";
                            } else {
                              return null;
                            }
                          }
                          return '';
                        },
                      ),
                      const SizedBox(height: 15),
                      // 3rd Reference ID = Email
                      TextFormField(
                        controller: referenceIdcontroller,
                        keyboardType: TextInputType.text,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: CustomDecoration()
                            .customDecoration('Reference ID', 'Reference ID'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Reference ID";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(height: 15),
                      // 3rd Text form field = Password
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
                          } else if (!value.contains(RegExp(r'[A-Z]'))) {
                            return "Password should cointain at least 1 Capital characters";
                          } else if (!value.contains(RegExp(r'[a-z]'))) {
                            return "Password should cointain at least 1 small characters";
                          } else if (!value.contains(RegExp(
                              r'[!\@\#\$\%\^\&\*\(\)\_\-\+\=\/\<\>\\ \\]'))) {
                            return "Password should cointain at least 1 Special character";
                          } else {
                            password = value;
                            return null;
                          }
                        },
                      ),
                      const SizedBox(height: 15),

                      // 4th Text form field = Confirm Password
                      TextFormField(
                        controller: confirmController,
                        keyboardType: TextInputType.visiblePassword,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        obscureText: true,
                        decoration: CustomDecoration().customDecoration(
                            'Confirm Password', 'Confirm Password'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Confirm Password";
                          } else if (password != value) {
                            return "Please write correct password";
                          } else if (password == value) {
                            return null;
                          }
                          return '';
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: const Text(
                          "By creating an account you agree to our",
                          style: TextStyle(
                            color: Colors.lightBlue,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Center(
                        child: const Text(
                          "terms of Service and Privacy Policy.",
                          style: TextStyle(color: Colors.lightBlue),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 45,
                        width: MediaQuery.of(context).size.width / 3,
                        child: CustomButton(
                          msg: "ACCOUNT CREATED SUCCESSFULLY",
                          formKey: _formKey,
                          buttontext: "Sign up",
                          press: () async {
                            if (userNameController.text.isNotEmpty &&
                                passwordController.text.isNotEmpty &&
                                confirmController.text.isNotEmpty &&
                                emailController.text.isNotEmpty) {
                              signupInfo();
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()));

                              // final prefs = await SharedPreferences.getInstance();
                              // prefs.setString('Full Name', userNameController.text);
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => MyHomePage()));
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(color: divider, fontSize: 18),
                    ),
                    SizedBox(width: 10),
                    TextButton(
                      child: Text(
                        "Sign in instead",
                        style:
                            TextStyle(color: Colors.indigo[400], fontSize: 18),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
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
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
