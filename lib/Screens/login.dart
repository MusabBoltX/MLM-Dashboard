import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mlm_dashboard/Screens/signup.dart';
import 'package:mlm_dashboard/main.dart';
//import 'package:mlm_dashboard/widgets/login&signup/custombutton.dart';
import 'package:mlm_dashboard/widgets/login&signup/customdecoration.dart';
import 'package:mlm_dashboard/widgets/login&signup/signUpbutton.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var password = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.lightBlue[100],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 120, left: 30, right: 30),
          child: Column(
            children: [
              Center(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  width: MediaQuery.of(context).size.width / 3,
                  color: Colors.white,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        // TEXTFORM USERNAME FIELD
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
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: CustomButton(
                            msg: "Logged In",
                            formKey: _formKey,
                            buttontext: "LOGIN",
                            press: () async {
                              if (userNameController.text.isNotEmpty &&
                                  passwordController.text.isNotEmpty) {
                                // final prefs =
                                //     await SharedPreferences.getInstance();
                                // prefs.setString(
                                //   'User Name',
                                //   userNameController.text,
                                // );
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyHomePage()));
                              }
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "Don't have an account?",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Divider(
                          color: Colors.black,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUp()));
                          },
                          child: const Text(
                            "CLICK HERE",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
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
    );
  }
}
