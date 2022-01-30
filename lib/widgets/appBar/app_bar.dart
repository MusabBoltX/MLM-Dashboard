import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:mlm_dashboard/colors.dart';

import '../../Screens/login_new.dart';

class AppBarNotificationBar extends StatefulWidget {
  const AppBarNotificationBar({Key key}) : super(key: key);

  @override
  _AppBarNotificationBarState createState() => _AppBarNotificationBarState();
}

class _AppBarNotificationBarState extends State<AppBarNotificationBar> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      toolbarHeight: 62,
      backgroundColor: secondaryColor,
      elevation: 10,
      actions: [
        IconButton(
          icon: Icon(Icons.mail_outline),
          onPressed: () {},
          color: primaryColor,
        ),
        SizedBox(
          width: 8,
        ),
        IconButton(
          icon: Icon(Icons.notifications, color: Colors.orange),
          onPressed: () {},
        ),
        SizedBox(
          width: 8,
        ),
        Center(
          child: DropdownButton(
            underline: Container(
              color: secondaryColor,
            ),
            icon: CircleAvatar(
              backgroundImage: AssetImage("assets/images/profile_pic.png"),
              radius: 22,
            ),
            value: _value,
            items: [
              DropdownMenuItem(
                child: Text("Profile"),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text("Settings"),
                value: 2,
              ),
              DropdownMenuItem(
                child: Text("FAQ's"),
                value: 3,
              ),
              DropdownMenuItem(
                child: Text("Logout"),
                value: 4,
              )
            ],
            onChanged: (value) async {
              if (value == 4) {
                var box = await Hive.openBox('auth');
                box.delete('access_token');
                box.close();

                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => Login()),
                    (Route<dynamic> route) => false);
              }
              if (value != 4) {
                setState(() {
                  _value = value;
                });
              }
            },
          ),
        ),
        SizedBox(
          width: 12,
        ),
      ],
    );
  }
}

Login() {}
