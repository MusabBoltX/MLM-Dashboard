import 'package:flutter/material.dart';
import 'package:mlm_dashboard/colors.dart';
import 'package:mlm_dashboard/widgets/appBar/app_bar.dart';

class IncomeScreen extends StatefulWidget {
  static const routeName = '/testscreen';

  @override
  _IncomeScreenState createState() => _IncomeScreenState();
}

class _IncomeScreenState extends State<IncomeScreen> {
  String _chosenValue = 'Select';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: AppBarNotificationBar(),
          ),
          SizedBox(
            height: 500,
            width: double.infinity,
            child: Card(
              elevation: 8,
              color: secondaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              //padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(15),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: divider,
                    endIndent: 12,
                    indent: 12,
                  ),
                  Text(
                    "DOWNLINE MEMBERS",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Divider(
                    color: divider,
                    endIndent: 12,
                    indent: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 220,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(70),
                                color: Colors.purple.withOpacity(0.4),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Total Downline Members",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "136",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            //
                            SizedBox(
                              width: 10,
                            ),
                            //
                            Container(
                              height: 50,
                              width: 220,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(70),
                                color: Colors.green.withOpacity(0.4),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Total Levels",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "57",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        //
                        //
                        //
                        Row(
                          children: [
                            Text(
                              "LEVEL :",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 183,
                              height: 28,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  width: 0.2,
                                  color: Colors.black,
                                ),
                              ),
                              child: DropdownButton<String>(
                                icon: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.10,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(_chosenValue),
                                      Icon(Icons.keyboard_arrow_down_rounded),
                                    ],
                                  ),
                                ),
                                iconSize: 24,
                                elevation: 16,
                                style:
                                    const TextStyle(color: Colors.deepPurple),
                                underline: Container(
                                  color: Colors.transparent,
                                ),
                                onChanged: (String newValue) {
                                  setState(() {
                                    _chosenValue = newValue;
                                  });
                                },
                                items: <String>[
                                  'One',
                                  'Two',
                                  'Free',
                                  'Four'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            SizedBox(
                              height: 40,
                              width: 90,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.purpleAccent.withOpacity(0.4),
                                ),
                                onPressed: () {},
                                child: Text('Search'),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            SizedBox(
                              height: 40,
                              width: 90,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.purpleAccent.withOpacity(0.4),
                                ),
                                onPressed: () {},
                                child: Text('Reset'),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
