import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mlm_dashboard/widgets/profile/profileDecoration.dart';
import '../../colors.dart';

class PaymentDetails extends StatefulWidget {
  const PaymentDetails({Key key}) : super(key: key);

  @override
  _PaymentDetailsState createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController payPalaccController = TextEditingController();
  final TextEditingController blockchainController = TextEditingController();
  final TextEditingController bitGoController = TextEditingController();
  final TextEditingController transferController = TextEditingController();

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
                  controller: payPalaccController,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9\-]')),
                    FilteringTextInputFormatter.deny(RegExp(r'[\\ \\a-zA-Z]'))
                  ],
                  autovalidateMode: AutovalidateMode.disabled,
                  keyboardType: TextInputType.number,
                  decoration: ProfileDecoration()
                      .customDecoration("N/A", "Paypal Account"),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  readOnly: editText == false ? true : false,
                  controller: blockchainController,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9\a-zA-Z]')),
                    // FilteringTextInputFormatter.deny(RegExp(r'[0-9]'))
                  ],
                  autovalidateMode: AutovalidateMode.disabled,
                  keyboardType: TextInputType.name,
                  decoration: ProfileDecoration()
                      .customDecoration("N/A", "Blockchain Address"),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  readOnly: editText == false ? true : false,
                  controller: bitGoController,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9\a-zA-Z]')),
                  ],
                  autovalidateMode: AutovalidateMode.disabled,
                  keyboardType: TextInputType.name,
                  decoration: ProfileDecoration()
                      .customDecoration("N/A", "Bitgo Address"),
                ),
                const SizedBox(height: 20),
                Divider(
                  color: divider,
                ),
                const SizedBox(height: 20),
                TextFormField(
                  readOnly: editText == false ? true : false,
                  controller: transferController,
                  inputFormatters: [
                    // FilteringTextInputFormatter.allow(RegExp(r'[\\ \\a-zA-Z]')),
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9\-]')),
                    FilteringTextInputFormatter.deny(RegExp(r'[\\ \\a-zA-Z]'))
                  ],
                  autovalidateMode: AutovalidateMode.disabled,
                  keyboardType: TextInputType.number,
                  decoration: ProfileDecoration()
                      .customDecoration("Bank Tranfer", "Payment Method"),
                ),
                const SizedBox(height: 20),
                // TextFormField(
                //   readOnly: editText == false ? true : false,
                //   controller: ifscCodeController,
                //   inputFormatters: [
                // FilteringTextInputFormatter.allow(RegExp(r'[0-9\a-zA-Z]')),
                // FilteringTextInputFormatter.deny(RegExp(r'[\\ \\a-zA-Z]'))
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
                        return payPalaccController.text;
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
