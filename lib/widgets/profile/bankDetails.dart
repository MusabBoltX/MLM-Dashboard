import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mlm_dashboard/widgets/profile/profileDecoration.dart';
import '../../colors.dart';

class BankDetails extends StatefulWidget {
  const BankDetails({Key key}) : super(key: key);

  @override
  _BankDetailsState createState() => _BankDetailsState();
}

class _BankDetailsState extends State<BankDetails> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController bankNameController = TextEditingController();
  final TextEditingController branchNameController = TextEditingController();
  final TextEditingController accountHolderController = TextEditingController();
  final TextEditingController accountNumController = TextEditingController();
  final TextEditingController ifscCodeController = TextEditingController();
  final TextEditingController panNumController = TextEditingController();

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
                      "Bank Details",
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
                  controller: bankNameController,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[\\ \\a-zA-Z]')),
                    FilteringTextInputFormatter.deny(RegExp(r'[0-9]'))
                  ],
                  autovalidateMode: AutovalidateMode.disabled,
                  keyboardType: TextInputType.name,
                  decoration:
                      ProfileDecoration().customDecoration("N/A", "Bank Name"),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  readOnly: editText == false ? true : false,
                  controller: branchNameController,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[\\ \\a-zA-Z]')),
                    FilteringTextInputFormatter.deny(RegExp(r'[0-9]'))
                  ],
                  autovalidateMode: AutovalidateMode.disabled,
                  keyboardType: TextInputType.name,
                  decoration: ProfileDecoration()
                      .customDecoration("N/A", "Branch Name"),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  readOnly: editText == false ? true : false,
                  controller: accountHolderController,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[\\ \\a-zA-Z]')),
                    FilteringTextInputFormatter.deny(RegExp(r'[0-9]'))
                  ],
                  autovalidateMode: AutovalidateMode.disabled,
                  keyboardType: TextInputType.name,
                  decoration: ProfileDecoration()
                      .customDecoration("N/A", "Account Holder"),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  readOnly: editText == false ? true : false,
                  controller: accountNumController,
                  inputFormatters: [
                    // FilteringTextInputFormatter.allow(RegExp(r'[\\ \\a-zA-Z]')),
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9\-]')),
                    FilteringTextInputFormatter.deny(RegExp(r'[\\ \\a-zA-Z]'))
                  ],
                  autovalidateMode: AutovalidateMode.disabled,
                  keyboardType: TextInputType.number,
                  decoration: ProfileDecoration()
                      .customDecoration("N/A", "Account Number"),
                ),
                const SizedBox(height: 20),
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
                TextFormField(
                  readOnly: editText == false ? true : false,
                  controller: panNumController,
                  inputFormatters: [
                    // FilteringTextInputFormatter.allow(RegExp(r'[\\ \\a-zA-Z]')),
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                    FilteringTextInputFormatter.deny(RegExp(r'[\\ \\a-zA-Z]'))
                  ],
                  autovalidateMode: AutovalidateMode.disabled,
                  keyboardType: TextInputType.number,
                  decoration:
                      ProfileDecoration().customDecoration("N/A", "Pan Number"),
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
                        return bankNameController.text;
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
