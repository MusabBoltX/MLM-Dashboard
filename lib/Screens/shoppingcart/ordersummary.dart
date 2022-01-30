import 'package:flutter/material.dart';
import 'package:mlm_dashboard/colors.dart';

class OrderSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Card(
        elevation: 10,
        shadowColor: primaryColor,
        color: divider,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DataTable(
              columns: [
                DataColumn(
                  label: Text(
                    "#",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onSort: (i, b) {},
                  numeric: false,
                ),
                DataColumn(
                  label: Text(
                    "Product",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onSort: (i, b) {},
                  numeric: false,
                ),
                DataColumn(
                  label: Text(
                    "Quantity",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onSort: (i, b) {},
                  numeric: false,
                ),
                DataColumn(
                  label: Text(
                    "Total",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onSort: (i, b) {},
                  numeric: false,
                )
              ],
              rows: [
                DataRow(
                  cells: [
                    DataCell(
                      Row(
                        children: [
                          Text("1"),
                          VerticalDivider(),
                        ],
                      ),
                    ),
                    DataCell(
                      Row(
                        children: [
                          Text("Product"),
                          VerticalDivider(),
                        ],
                      ),
                    ),
                    DataCell(
                      Row(
                        children: [
                          Text("1"),
                          VerticalDivider(),
                        ],
                      ),
                    ),
                    DataCell(
                      Row(
                        children: [
                          Text("1"),
                          VerticalDivider(),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
