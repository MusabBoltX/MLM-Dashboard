import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mlm_dashboard/widgets/profile/profileDecoration.dart';
import '../../colors.dart';

class Settings extends StatefulWidget {
  const Settings({Key key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController languageController = TextEditingController();
  final TextEditingController positionController = TextEditingController();
  final TextEditingController currencyController = TextEditingController();

  var editText = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      width: 410,
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
                      "Settings",
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
                TextFormField(
                  readOnly: editText == false ? true : false,
                  controller: languageController,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[\\ \\a-zA-Z]')),
                    FilteringTextInputFormatter.deny(RegExp(r'[0-9]'))
                  ],
                  autovalidateMode: AutovalidateMode.disabled,
                  keyboardType: TextInputType.name,
                  decoration: ProfileDecoration()
                      .customDecoration("English", "Language"),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  readOnly: editText == false ? true : false,
                  controller: positionController,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[\\ \\a-zA-Z]')),
                    FilteringTextInputFormatter.deny(RegExp(r'[0-9]'))
                  ],
                  autovalidateMode: AutovalidateMode.disabled,
                  keyboardType: TextInputType.name,
                  decoration: ProfileDecoration()
                      .customDecoration("Left Leg", "Binary Position Lock"),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  readOnly: editText == false ? true : false,
                  controller: currencyController,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[\\ \\a-zA-Z]')),
                    FilteringTextInputFormatter.deny(RegExp(r'[0-9]'))
                  ],
                  autovalidateMode: AutovalidateMode.disabled,
                  keyboardType: TextInputType.name,
                  decoration: ProfileDecoration()
                      .customDecoration("\$ United States Dollar", "Currency"),
                ),

                // TextFormField(
                //   readOnly: editText == false ? true : false,
                //   controller: ifscCodeController,
                //   inputFormatters: [
                //     FilteringTextInputFormatter.allow(RegExp(r'[0-9\a-zA-Z]')),
                //     // FilteringTextInputFormatter.deny(RegExp(r'[\\ \\a-zA-Z]'))
                //   ],
                //   autovalidateMode: AutovalidateMode.disabled,
                //   keyboardType: TextInputType.number,
                //   decoration:
                //       ProfileDecoration().customDecoration("N/A", "IFSC CODE"),
                // ),
                // const SizedBox(height: 20),

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
                        return languageController.text;
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
