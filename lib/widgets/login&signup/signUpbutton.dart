import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key key,
    @required this.msg,
    @required this.formKey,
    @required this.buttontext,
    @required this.press,
  }) : super(key: key);

  final String msg;
  final GlobalKey<FormState> formKey;
  final String buttontext;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        press();
        if (formKey.currentState.validate()) {
          Fluttertoast.showToast(
            msg: msg,
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.lightBlue[900],
            textColor: Colors.white,
            fontSize: 20,
          );
        }
      },
      child: Text(buttontext),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.indigo[400])),
    );
  }
}
