import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mlm_dashboard/main.dart';
import 'package:email_validator/email_validator.dart' as email;
//import 'package:mlm_dashboard/widgets/login&signup/custombutton.dart';
import 'package:mlm_dashboard/widgets/login&signup/customdecoration.dart';
import 'package:mlm_dashboard/widgets/login&signup/signUpbutton.dart';
import 'login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();
  var password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],

      // APPBAR
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[100],
        elevation: 0,
        title: const Text(
          'TITLE',
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => LogIn()),
            );
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),

      // BODY

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 15, left: 30, right: 30),
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
                          height: 30,
                        ),
                        const Text(
                          "Create an Account",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.lightBlue),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        // TextFiled Full name
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
                              .customDecoration('Full Name', 'Name'),
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
                          height: 15,
                        ),
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
                        const SizedBox(
                          height: 15,
                        ),
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
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "By creating an account you agree to our",
                          style: TextStyle(
                            color: Colors.lightBlue,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Terms of Service and Privacy Policy.",
                          style: TextStyle(color: Colors.lightBlue),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 55,
              ),
              SizedBox(
                height: 60,
                width: MediaQuery.of(context).size.width / 3,
                child: CustomButton(
                  msg: "ACCOUNT CREATED SUCCESSFULLY",
                  formKey: _formKey,
                  buttontext: "CONTINUE",
                  press: () async {
                    if (userNameController.text.isNotEmpty &&
                        passwordController.text.isNotEmpty &&
                        confirmController.text.isNotEmpty &&
                        emailController.text.isNotEmpty) {
                      // final prefs = await SharedPreferences.getInstance();
                      // prefs.setString('Full Name', userNameController.text);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage()));
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
