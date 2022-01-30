import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../colors.dart';

class CardAvatar extends StatelessWidget {
  const CardAvatar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: double.infinity,
      child: Card(
        color: secondaryColor,
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 35, bottom: 30),
          child: Row(
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/profile_pic.png"),
                    radius: 79,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Khizar Ahmedk",
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
                  SizedBox(height: 5),
                  Text("KhizarAhmed@gmail.com"),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 45,
                    width: 360,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.amberAccent,
                      ),
                      child: Text(
                        "Change Password",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 45,
                    width: 360,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.amberAccent,
                      ),
                      child: Text(
                        "Change Transaction Password",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 60,
                    width: 260,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.green),
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text("KYC: NOT VERIFIED"),
                          SizedBox(width: 20),
                          SizedBox(
                            height: 60,
                            width: 95,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.amberAccent,
                              ),
                              child: Text(
                                "More Info",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(width: 35),
              Container(
                height: double.infinity,
                child: VerticalDivider(
                  color: divider,
                ),
              ),
              SizedBox(width: 35),
              Padding(
                padding: const EdgeInsets.only(
                    top: 30, left: 30, right: 30, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    Text(
                      "Membership Package:",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "aquariza",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    Row(
                      children: [
                        Column(
                          // Your Name Box
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Sponsor Name"),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Your Fist Name",
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Column(
                          // Placement
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              //crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Placement"),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Khizar Ahmed",
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Column(
                          // Group PV
                          children: [
                            Row(
                              children: [
                                Text("Position"),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Left",
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      height: 140,
                      width: 683,
                      child: Card(
                        elevation: 5,
                        color: secondaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 30, bottom: 20),
                          child: Row(
                            children: [
                              Column(
                                // Personal PV
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    //crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset(
                                          "assets/icons/menu_profile.svg"),
                                      SizedBox(width: 10),
                                      Text("Personal PV"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "650",
                                    style: TextStyle(
                                      fontSize: 28,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 120,
                              ),
                              VerticalDivider(
                                color: divider,
                                width: 4,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                // Group PV
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                          "assets/icons/menu_profile.svg"),
                                      SizedBox(width: 10),
                                      Text("Group PV"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "3450",
                                    style: TextStyle(
                                      fontSize: 28,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 120,
                              ),
                              VerticalDivider(
                                color: divider,
                                width: 4,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                // Left Carry
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                          "assets/icons/menu_profile.svg"),
                                      SizedBox(width: 10),
                                      Text("Left Carry"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "80",
                                    style: TextStyle(
                                      fontSize: 28,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 120,
                              )
                            ],
                          ),
                        ),
                      ),
                    )
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
