import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mlm_dashboard/Screens/dashboard.dart';
import 'package:mlm_dashboard/Screens/signup.dart';
import 'package:mlm_dashboard/colors.dart';
import 'package:mlm_dashboard/models/e-wallet.dart';
import 'package:mlm_dashboard/widgets/appBar/app_bar.dart';
import 'package:mlm_dashboard/widgets/e-wallet/card_e-wallet.dart';
import 'package:mlm_dashboard/widgets/e-wallet/topBar_e-wallet.dart';

class EWallate extends StatelessWidget {
  EWallate({Key key}) : super(key: key);

  final descriptionData = DescriptionChartData();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            AppBarNotificationBar(),
            SizedBox(
              height: 25,
            ),
            TopBarEwallet(),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                CardEwallet(),
                CardEwallet(),
                CardEwallet(),
                CardEwallet(),
                CardEwallet(),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 500,
              child: Card(
                elevation: 8,
                color: secondaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUp()));
                            },
                            child: Text(
                              "Statement",
                              style:
                                  TextStyle(fontSize: 14, color: primaryColor),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Transfer History",
                              style:
                                  TextStyle(fontSize: 14, color: primaryColor),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Purchase Wallet",
                              style:
                                  TextStyle(fontSize: 14, color: primaryColor),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "My Earnings",
                              style:
                                  TextStyle(fontSize: 14, color: primaryColor),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: divider,
                      endIndent: 15,
                      indent: 15,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 15),
                        child: DataTable(
                          horizontalMargin: 0,
                          headingTextStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          columns: [
                            DataColumn(
                              label: Text(
                                "Description",
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                "Amount",
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                "Transaction Date",
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                "Balance",
                              ),
                            ),
                          ],
                          rows: List.generate(
                            descriptionData.lists.length,
                            (index) =>
                                buildDataRow(descriptionData.lists[index]),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

DataRow buildDataRow(DescriptionData obj) {
  return DataRow(
    cells: [
      DataCell(
        Container(
          width: 320,
          child: Text(obj.commission),
        ),
      ),
      DataCell(
        Text("\$ ${obj.amount}"),
      ),
      DataCell(
        Container(
          width: 320,
          child: Text(obj.date),
        ),
      ),
      DataCell(
        Text("\$ ${obj.balance}"),
      ),
    ],
  );
}
