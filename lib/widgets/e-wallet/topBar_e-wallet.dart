import 'package:flutter/material.dart';
import 'package:mlm_dashboard/colors.dart';

class TopBarEwallet extends StatefulWidget {
  const TopBarEwallet({Key key}) : super(key: key);

  @override
  _TopBarEwalletState createState() => _TopBarEwalletState();
}

class _TopBarEwalletState extends State<TopBarEwallet> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'E-Wallet',
          // style: TextStyle(fontSize: 15, color: Theme.of(context).textTheme.headline1),
          style: Theme.of(context).textTheme.headline5,
        ),
        Container(
          height: 55,
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: primaryColor,
          ),
          child: DropdownButton(
            icon: Icon(Icons.arrow_drop_down),
            focusColor: Colors.purple[200],
            style: TextStyle(
              fontSize: 15,
            ),
            underline: Container(
              color: secondaryColor,
            ),
            hint: Text("Ewallet Fund Transfer"),
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            },
            items: [
              DropdownMenuItem(
                child: Text("Add Purchase Wallet Fund"),
                value: 1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
