import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mlm_dashboard/colors.dart';

class Packages extends StatelessWidget {
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
            Padding(
              padding: const EdgeInsets.all(0),
              child: DataTable(
                columns: [
                  DataColumn(
                    label: Text("Items"),
                    onSort: (i, b) {},
                    numeric: false,
                  ),
                  DataColumn(
                    label: Text("Quantity"),
                    onSort: (i, b) {},
                    numeric: false,
                  ),
                  DataColumn(
                    label: Text("Price"),
                    onSort: (i, b) {},
                    numeric: false,
                  ),
                  DataColumn(
                    label: Text("Total"),
                    onSort: (i, b) {},
                    numeric: false,
                  ),
                ],
                rows: [
                  DataRow(
                    // First ROW Data
                    cells: [
                      DataCell(
                        Row(
                          children: [
                            SvgPicture.asset("assets/icons/doc_file.svg"),
                            SizedBox(width: 150),
                            VerticalDivider(),
                            Text("Purchase Pack 1"),
                            SizedBox(
                              width: 100,
                            ),
                            VerticalDivider(),
                          ],
                        ),
                      ),
                      DataCell(
                        Row(
                          children: [
                            Text("6"),
                            SizedBox(
                              width: 150,
                            ),
                            VerticalDivider(),
                          ],
                        ),
                      ),
                      DataCell(
                        Row(
                          children: [
                            Text("Rs. 100.00"),
                            SizedBox(
                              width: 150,
                            ),
                            VerticalDivider(),
                          ],
                        ),
                      ),
                      DataCell(
                        Text("Rs 45,250.00"),
                      ),
                    ],
                  ),
                  DataRow(
                    // Second ROW Data
                    cells: [
                      DataCell(
                        Row(
                          children: [
                            SvgPicture.asset("assets/icons/doc_file.svg"),
                            SizedBox(width: 150),
                            VerticalDivider(),
                            Text("Purcahse Pack 2"),
                            SizedBox(
                              width: 100,
                            ),
                            VerticalDivider(),
                          ],
                        ),
                      ),
                      DataCell(
                        Row(
                          children: [
                            Text("2"),
                            SizedBox(
                              width: 150,
                            ),
                            VerticalDivider(),
                          ],
                        ),
                      ),
                      DataCell(
                        Row(
                          children: [
                            Text("Rs. 150.00"),
                            SizedBox(
                              width: 150,
                            ),
                            VerticalDivider(),
                          ],
                        ),
                      ),
                      DataCell(
                        Text("Rs 52,000.00"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(0),
//             child: DataTable(
//               columns: [
//                 DataColumn(
//                   label: Text("Items"),
//                   onSort: (i, b) {},
//                   numeric: false,
//                 ),
//                 DataColumn(
//                   label: Text("Quantity"),
//                   onSort: (i, b) {},
//                   numeric: false,
//                 ),
//                 DataColumn(
//                   label: Text("Price"),
//                   onSort: (i, b) {},
//                   numeric: false,
//                 ),
//                 DataColumn(
//                   label: Text("Total"),
//                   onSort: (i, b) {},
//                   numeric: false,
//                 ),
//               ],
//               rows: [
//                 DataRow(
//                   // First ROW Data
//                   cells: [
//                     DataCell(
//                       Row(
//                         children: [
//                           SvgPicture.asset("assets/icons/doc_file.svg"),
//                           SizedBox(width: 150),
//                           VerticalDivider(),
//                           Text("Purchase Pack 1"),
//                           SizedBox(
//                             width: 100,
//                           ),
//                           VerticalDivider(),
//                         ],
//                       ),
//                     ),
//                     DataCell(
//                       Row(
//                         children: [
//                           Text("6"),
//                           SizedBox(
//                             width: 150,
//                           ),
//                           VerticalDivider(),
//                         ],
//                       ),
//                     ),
//                     DataCell(
//                       Row(
//                         children: [
//                           Text("Rs. 100.00"),
//                           SizedBox(
//                             width: 150,
//                           ),
//                           VerticalDivider(),
//                         ],
//                       ),
//                     ),
//                     DataCell(
//                       Text("Rs 45,250.00"),
//                     ),
//                   ],
//                 ),
//                 DataRow(
//                   // Second ROW Data
//                   cells: [
//                     DataCell(
//                       Row(
//                         children: [
//                           SvgPicture.asset("assets/icons/doc_file.svg"),
//                           SizedBox(width: 150),
//                           VerticalDivider(),
//                           Text("Purcahse Pack 2"),
//                           SizedBox(
//                             width: 100,
//                           ),
//                           VerticalDivider(),
//                         ],
//                       ),
//                     ),
//                     DataCell(
//                       Row(
//                         children: [
//                           Text("2"),
//                           SizedBox(
//                             width: 150,
//                           ),
//                           VerticalDivider(),
//                         ],
//                       ),
//                     ),
//                     DataCell(
//                       Row(
//                         children: [
//                           Text("Rs. 150.00"),
//                           SizedBox(
//                             width: 150,
//                           ),
//                           VerticalDivider(),
//                         ],
//                       ),
//                     ),
//                     DataCell(
//                       Text("Rs 52,000.00"),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),