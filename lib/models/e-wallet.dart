import 'package:flutter/cupertino.dart';

class DescriptionData {
  final String commission;
  final double amount;
  final String date;
  final double balance;

  DescriptionData(
      {@required this.commission,
      @required this.amount,
      @required this.date,
      @required this.balance});
}

class DescriptionChartData {
  List<DescriptionData> _lists = [
    DescriptionData(
      commission: "Level Commission from DEMO16Z",
      amount: 1.24,
      date: "November 12,2020, 4:29 am",
      balance: 1.24,
    ),
    DescriptionData(
      commission: "Referral Commission from DEMO16Z",
      amount: 4.14,
      date: "November 12,2020, 4:29 am",
      balance: 5.38,
    ),
    DescriptionData(
      commission: "Binary Commission",
      amount: 4.14,
      date: "November 12,2020, 5:01 am",
      balance: 9.25,
    )
  ];

  List<DescriptionData> get lists {
    return [..._lists];
  }
}
