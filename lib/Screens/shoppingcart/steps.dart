import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../colors.dart';
import '../../models/shoppint_cart_model.dart';

class Steps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final shoppingData = ShoppingCartData().items;

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300,
            width: double.infinity,
            color: Colors.green,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      ...shoppingData.map(
                        (current) => DataRow(
                          // First ROW Data
                          cells: [
                            DataCell(
                              Row(
                                children: [
                                  SvgPicture.asset("assets/icons/doc_file.svg"),
                                  SizedBox(width: 150),
                                  VerticalDivider(),
                                  Text(current.product),
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
                                  Text(current.quantity.toString()),
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
                                  Text('Rs. ${current.price}'),
                                  SizedBox(
                                    width: 150,
                                  ),
                                  VerticalDivider(),
                                ],
                              ),
                            ),
                            DataCell(
                              Text('Rs ${current.subtotal}'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
