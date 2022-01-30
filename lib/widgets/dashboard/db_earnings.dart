import 'package:flutter/cupertino.dart';

class DashboradExpenses {
  final String commission;
  final double price;
  final String rank;

  DashboradExpenses(
      {@required this.commission, @required this.price, @required this.rank});
}

class DashboardExpensesData {
  List<DashboradExpenses> _list = [
    DashboradExpenses(
      commission: "Rank Commission",
      price: 920.0,
      rank: "RC",
    ),
    DashboradExpenses(
      commission: "Binary Commission",
      price: 653.20,
      rank: "BC",
    ),
    DashboradExpenses(
      commission: "Referral Commission",
      price: 575.00,
      rank: "RC",
    ),
  ];
  List<DashboradExpenses> get list {
    return [..._list];
  }
}
