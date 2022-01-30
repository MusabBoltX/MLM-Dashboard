import 'package:flutter/material.dart';
import 'package:mlm_dashboard/colors.dart';
import 'package:mlm_dashboard/widgets/appBar/app_bar.dart';
import 'package:mlm_dashboard/widgets/dashboard/container_circle_avatar.dart';
// import 'package:mlm_dashboard/models/db_earnings.dart';
import 'package:mlm_dashboard/widgets/dashboard/container_db.dart';
import 'package:mlm_dashboard/widgets/dashboard/db2nd_3rd_row.dart';
import 'package:mlm_dashboard/widgets/dashboard/db_earnings.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    final expensesData = DashboardExpensesData();

    return SingleChildScrollView(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: AppBarNotificationBar(),
          ),
          Divider(
            color: divider,
          ),
          SizedBox(
            height: 4,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              " Overview",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Divider(
            color: divider,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
            child: Row(
              children: [
                // 1st Column (E-Wallate and Payout released)
                Column(
                  children: [
                    ContainerDb(
                      subMessage: "E-Wallet",
                      message: "RS 500.00",
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ContainerDb(
                      subMessage: "Payout Released",
                      message: "RS 11,2500.00",
                    ),
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  // 2nd Column (Commission Earned and PayOut)
                  children: [
                    ContainerDb(
                      subMessage: "Commission Earned",
                      message: "RS 2500.00",
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ContainerDb(
                      subMessage: "Payout Pending",
                      message: "RS 0.00",
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                  width: 15,
                ),
                Column(
                  //3rd Column (circle avatar)
                  children: [ContainerThirdAvatar()],
                ),
              ],
            ),
          ),
          // Second Row of DB
          DBSecondRow(),
          //Third Row of DB
          DBThirdRow(),
          Padding(
            padding: EdgeInsets.all(15),
            child: SizedBox(
              width: double.infinity,
              child: Card(
                color: secondaryColor,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: DataTable(
                          horizontalMargin: 0.0,
                          columns: [
                            DataColumn(
                              label: Text(
                                "Earnings and Expenses",
                                style: TextStyle(
                                  fontSize: 18,
                                ),

                                //style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                "",
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                "",
                              ),
                            ),
                          ],
                          rows: List.generate(
                            expensesData.list.length,
                            (index) => buildDataRow(expensesData.list[index]),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(color: divider),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow buildDataRow(DashboradExpenses obj) {
  return DataRow(
    cells: [
      DataCell(
        Text(
          obj.commission,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      DataCell(
        Text(
          '\$ ${obj.price}',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      DataCell(
        Container(
          height: 30,
          width: 60,
          color: Colors.amber,
          child: Center(
            child: Text(
              obj.rank,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
