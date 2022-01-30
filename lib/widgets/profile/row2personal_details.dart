import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:mlm_dashboard/widgets/profile/profileDecoration.dart';
import '../../colors.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({Key key}) : super(key: key);

  @override
  _PersonalDetailsState createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController dropdownMenuCOntroller = TextEditingController();
  final TextEditingController dateTimecontroller = TextEditingController();
  final format = DateFormat.yMMMd();
  DateTime selectedDateTime;

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
                      "Personal Details",
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
                  controller: firstNameController,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[\\ \\a-zA-Z]')),
                    FilteringTextInputFormatter.deny(RegExp(r'[0-9]'))
                  ],
                  autovalidateMode: AutovalidateMode.disabled,
                  keyboardType: TextInputType.name,
                  decoration: ProfileDecoration()
                      .customDecoration("Khizar", "First Name"),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  readOnly: editText == false ? true : false,
                  controller: lastNameController,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[\\ \\a-zA-Z]')),
                    FilteringTextInputFormatter.deny(RegExp(r'[0-9]'))
                  ],
                  autovalidateMode: AutovalidateMode.disabled,
                  keyboardType: TextInputType.name,
                  // initialValue: 'Ahmedddd',
                  decoration: ProfileDecoration()
                      .customDecoration("Ahmed", "Last Name"),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  readOnly: editText == false ? true : false,
                  controller: dropdownMenuCOntroller,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[\\ \\a-zA-Z]')),
                    FilteringTextInputFormatter.deny(RegExp(r'[0-9]'))
                  ],
                  autovalidateMode: AutovalidateMode.disabled,
                  keyboardType: TextInputType.name,
                  decoration:
                      ProfileDecoration().customDecoration("Male", "Gender"),
                ),
                const SizedBox(height: 20),
                DateTimeField(
                  readOnly: editText == false ? true : false,
                  format: format,
                  textInputAction: TextInputAction.next,
                  onShowPicker: (context, currentValue) async {
                    final date = await showDatePicker(
                      context: context,
                      firstDate: DateTime(1900),
                      initialDate: currentValue ?? DateTime.now(),
                      lastDate: DateTime(2100),
                      builder: (context, child) {
                        return Theme(
                          child: child,
                          data: ThemeData.light().copyWith(
                            colorScheme: ColorScheme.light(
                              primary: Colors.black,
                            ),
                          ),
                        );
                      },
                    );
                    return date;
                  },
                  // validator: (date) => date == null
                  //     ? 'Please input your DOB'
                  //     : null,
                  // // initialValue: initialValue,
                  // onChanged: (date) => setState(() {
                  //   selectedDateTime = date;
                  // }),
                  // onSaved: (date) => setState(() {
                  //   selectedDateTime = date;
                  // }),

                  // readOnly: ,
                  initialValue:
                      selectedDateTime == null ? null : selectedDateTime,
                  decoration: ProfileDecoration()
                      .customDecoration("Sep 21,2021", "Date of Birth"),
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
                        return firstNameController.text;
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
