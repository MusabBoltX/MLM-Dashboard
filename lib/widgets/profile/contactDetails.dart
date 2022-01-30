import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mlm_dashboard/widgets/login&signup/customdecoration.dart';
import 'package:mlm_dashboard/widgets/profile/profileDecoration.dart';
import '../../colors.dart';
import 'package:email_validator/email_validator.dart' as email;

class ContactDetails extends StatefulWidget {
  const ContactDetails({Key key}) : super(key: key);

  @override
  _ContactDetailsState createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController addressoneController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController landLineController = TextEditingController();

  final TextEditingController addressTwoController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController zipCodeController = TextEditingController();
  final TextEditingController mobNumController = TextEditingController();

  var editText = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      width: 829.5,
      child: Card(
        color: secondaryColor,
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 40,
            left: 25,
            right: 25,
            bottom: 40,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Contact Details",
                      style: TextStyle(fontSize: 25),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          editText = true;
                        });
                      },
                      icon: Icon(Icons.edit),
                      splashRadius: 20,
                      splashColor: primaryColor,
                      focusColor: Colors.lightBlue,
                      color: primaryColor,
                    ),
                  ],
                ),
                const SizedBox(height: 28),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 380,
                          child: TextFormField(
                            readOnly: editText == false ? true : false,
                            controller: addressoneController,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9\a-zA-Z]')),
                              // FilteringTextInputFormatter.deny(RegExp(r'[0-9]'))
                            ],
                            autovalidateMode: AutovalidateMode.disabled,
                            keyboardType: TextInputType.name,
                            decoration: ProfileDecoration()
                                .customDecoration("N/A", "Address Line 1"),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 380,
                          child: TextFormField(
                            readOnly: editText == false ? true : false,
                            controller: countryController,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[\\ \\a-zA-Z]')),
                              FilteringTextInputFormatter.deny(RegExp(r'[0-9]'))
                            ],
                            autovalidateMode: AutovalidateMode.disabled,
                            keyboardType: TextInputType.name,
                            decoration: ProfileDecoration()
                                .customDecoration("Pakistan", "Country"),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 380,
                          child: TextFormField(
                            readOnly: editText == false ? true : false,
                            controller: countryController,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[\\ \\a-zA-Z]')),
                              FilteringTextInputFormatter.deny(RegExp(r'[0-9]'))
                            ],
                            autovalidateMode: AutovalidateMode.disabled,
                            keyboardType: TextInputType.name,
                            decoration: ProfileDecoration()
                                .customDecoration("N/A", "City"),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 380,
                          child: TextFormField(
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
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
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 380,
                          child: TextFormField(
                            readOnly: editText == false ? true : false,
                            controller: landLineController,
                            inputFormatters: [
                              // FilteringTextInputFormatter.allow(RegExp(r'[\\ \\a-zA-Z]')),
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9\-]')),
                              FilteringTextInputFormatter.deny(
                                  RegExp(r'[\\ \\a-zA-Z]'))
                            ],
                            autovalidateMode: AutovalidateMode.disabled,
                            keyboardType: TextInputType.number,
                            decoration: ProfileDecoration()
                                .customDecoration("N/A", "Landline Number"),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 11.5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 380,
                          child: TextFormField(
                            readOnly: editText == false ? true : false,
                            controller: addressTwoController,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9\a-zA-Z]')),
                              // FilteringTextInputFormatter.deny(RegExp(r'[0-9]'))
                            ],
                            autovalidateMode: AutovalidateMode.disabled,
                            keyboardType: TextInputType.name,
                            decoration: ProfileDecoration()
                                .customDecoration("N/A", "Address Line 2"),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 380,
                          child: TextFormField(
                            readOnly: editText == false ? true : false,
                            controller: stateController,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[\\ \\a-zA-Z]')),
                              FilteringTextInputFormatter.deny(RegExp(r'[0-9]'))
                            ],
                            autovalidateMode: AutovalidateMode.disabled,
                            keyboardType: TextInputType.name,
                            decoration: ProfileDecoration()
                                .customDecoration("Pakistan", "State"),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 380,
                          child: TextFormField(
                            readOnly: editText == false ? true : false,
                            controller: zipCodeController,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]')),
                              FilteringTextInputFormatter.deny(
                                  RegExp(r'[\\ \\a-zA-Z]')),
                            ],
                            autovalidateMode: AutovalidateMode.disabled,
                            keyboardType: TextInputType.name,
                            decoration: ProfileDecoration()
                                .customDecoration("N/A", "Code"),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 380,
                          child: TextFormField(
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
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
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 380,
                          child: TextFormField(
                            readOnly: editText == false ? true : false,
                            controller: mobNumController,
                            inputFormatters: [
                              // FilteringTextInputFormatter.allow(RegExp(r'[\\ \\a-zA-Z]')),
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9\-]')),
                              FilteringTextInputFormatter.deny(
                                  RegExp(r'[\\ \\a-zA-Z]'))
                            ],
                            autovalidateMode: AutovalidateMode.disabled,
                            keyboardType: TextInputType.number,
                            decoration: ProfileDecoration()
                                .customDecoration("N/A", "Mobile Number"),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                if (editText == true)
                  SizedBox(
                    height: 55,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          editText = false;
                        });
                        return addressoneController.text;
                      },
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(5),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(60))),
                      ),
                      child: const Center(
                        child: Text("Save"),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
