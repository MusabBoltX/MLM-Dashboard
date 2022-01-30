import 'package:flutter/material.dart';
import 'package:mlm_dashboard/colors.dart';
import 'package:mlm_dashboard/my_flutter_app_icons.dart' as AppIcons;

class ContainerThirdAvatar extends StatelessWidget {
  const ContainerThirdAvatar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 335,
      width: 679,
      child: Card(
        elevation: 5,
        color: secondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 29, left: 75, bottom: 29),
          child: Row(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 0,
                  ),
                  CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/profile_pic.png"),
                    radius: 55,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Huzaifa Malik",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "INF857335",
                    style: TextStyle(
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "Rank: ",
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        "Pure Diaminod",
                        style: TextStyle(
                          color: Colors.purple[300],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 45,
                    width: 138,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.amberAccent,
                      ),
                      child: Text(
                        "View Profile",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 85),
              Container(
                height: 300,
                child: VerticalDivider(
                  color: divider,
                ),
              ),
              SizedBox(
                width: 27,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Membership Package:",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Membership package",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      // Divider
                      width: 330,
                      child: Divider(
                        color: Colors.grey[700],
                        endIndent: 42,
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Row(
                      children: [
                        Text("Replica Link",
                            style: TextStyle(color: Colors.black)),
                        SizedBox(width: 120),
                        Text(
                          "Lead Capture",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          AppIcons.MyFlutterApp.docs,
                          color: Colors.blue,
                          size: 16,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          AppIcons.MyFlutterApp.facebook,
                          color: Colors.blue,
                          size: 16,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          AppIcons.MyFlutterApp.twitter,
                          color: Colors.blue,
                          size: 16,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          AppIcons.MyFlutterApp.linkedin,
                          color: Colors.blue,
                          size: 16,
                        ),
                        SizedBox(
                          width: 110,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              AppIcons.MyFlutterApp.docs,
                              color: Colors.blue,
                              size: 16,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Icon(
                              AppIcons.MyFlutterApp.facebook,
                              color: Colors.blue,
                              size: 16,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Icon(
                              AppIcons.MyFlutterApp.twitter,
                              color: Colors.blue,
                              size: 16,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Icon(
                              AppIcons.MyFlutterApp.linkedin,
                              color: Colors.blue,
                              size: 16,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
