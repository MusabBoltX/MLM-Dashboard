import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:mlm_dashboard/colors.dart';

// 2ND ROW OF DASHBOARD CONTAININD NAME AND CARRY
class DBSecondRow extends StatelessWidget {
  DBSecondRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
      child: SizedBox(
        width: double.infinity,
        height: 150,
        child: Card(
          color: secondaryColor,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 38,
              left: 42,
            ),
            child: Row(
              children: [
                Column(
                  // Your Name Box
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Sponsor Name"),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Your Fist Name",
                      style: TextStyle(
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),
                VerticalDivider(
                  color: divider,
                  endIndent: 38,
                  width: 4,
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  // Personal PV
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset("assets/icons/menu_profile.svg"),
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
                  width: 150,
                ),
                VerticalDivider(
                  color: divider,
                  endIndent: 38,
                ),
                Column(
                  // Group PV
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset("assets/icons/menu_profile.svg"),
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
                  width: 150,
                ),
                VerticalDivider(
                  color: divider,
                  endIndent: 38,
                ),
                Column(
                  // Left Carry
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset("assets/icons/menu_profile.svg"),
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
                  width: 150,
                ),
                VerticalDivider(
                  color: divider,
                  endIndent: 38,
                ),
                Column(
                  // Right Carry
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset("assets/icons/menu_profile.svg"),
                        SizedBox(width: 10),
                        Text("Right Carry"),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "10",
                      style: TextStyle(
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// 3RD ROW OF DASHBOARD CONTAININD RANK AND REFERRAL COUNT
class DBThirdRow extends StatelessWidget {
  DBThirdRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
      child: SizedBox(
        width: double.infinity,
        height: 150,
        child: Card(
          color: secondaryColor,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              left: 20,
              top: 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Current Rank",
                          style: TextStyle(color: Colors.purple),
                        ),
                        Text(" - Pure Dimaond")
                      ],
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    Row(
                      children: [
                        Text("100%"),
                        SizedBox(
                          width: 50,
                        ),
                        Text("Referral Count"),
                        SizedBox(
                          width: 135,
                        ),
                        Container(
                          height: 40,
                          width: 138,
                          color: Colors.amber,
                          child: Center(
                            child: Text("8 Required"),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 40,
                          width: 138,
                          color: Colors.amber,
                          child: Center(
                            child: Text("63 Achieved"),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(width: 5),
                VerticalDivider(
                  color: divider,
                  endIndent: 23,
                ),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Next Rank",
                          style: TextStyle(color: Colors.purple),
                        ),
                        Text(" - Platinum")
                      ],
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    Row(
                      children: [
                        Text("100%"),
                        SizedBox(
                          width: 50,
                        ),
                        Text("Referral Count"),
                        SizedBox(
                          width: 135,
                        ),
                        Container(
                          height: 40,
                          width: 138,
                          color: Colors.amber,
                          child: Center(
                            child: Text("8 Required"),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 40,
                          width: 138,
                          color: Colors.amber,
                          child: Center(
                            child: Text("63 Achieved"),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
