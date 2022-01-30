import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mlm_dashboard/Screens/shoppingcart/checkoutsteps.dart';
import 'package:mlm_dashboard/colors.dart';
import 'package:mlm_dashboard/models/product.dart';
import 'package:mlm_dashboard/widgets/appBar/app_bar.dart';
import '../../models/shoppint_cart_model.dart';

// import 'package:flutter_svg/avd.dart';

class ShoppingCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    final cartData = ShoppingCartData();
    final productData = ProductData();
    //
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            AppBarNotificationBar(),
            SizedBox(
              height: 10,
            ),
            TopBar(),
            SizedBox(height: 10),
            Card(
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
                              "Sub Total",
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              "Product",
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              "Price",
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              "Quantity",
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              "Sub Total",
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ],
                        rows: List.generate(
                          cartData.items.length,
                          (index) => buildDataRow(cartData.items[index]),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.grey[700],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 40,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Checkout()));
                        },
                        icon: SvgPicture.asset("assets/icons/menu_tran.svg",
                            color: Colors.white70),
                        //icon: Icon(Icons.grading_sharp),
                        label: Text('Checkout'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 450,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                // primary: true,
                itemCount: productData.products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  // mainAxisSpacing: 10,
                  // childAspectRatio: 1.1,
                ),
                itemBuilder: (context, index) => ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: secondaryColor,
                    ),
                    child: Product(
                      id: productData.products[index].id,
                      title: productData.products[index].title,
                      category: productData.products[index].category,
                      url: productData.products[index].url,
                      price: productData.products[index].price,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  DataRow buildDataRow(ShoppingtCart obj) {
    return DataRow(
      cells: [
        DataCell(
          Text(obj.id.toString()),
        ),
        DataCell(Text(obj.product)),
        DataCell(
          Text('\$ ${obj.price}'),
        ),
        DataCell(
          Text(obj.quantity.toString()),
        ),
        DataCell(Text('\$ ${obj.subtotal}')),
      ],
    );
  }
}

class Product extends StatelessWidget {
  const Product({
    Key key,
    @required this.id,
    @required this.title,
    @required this.category,
    @required this.price,
    @required this.url,
  }) : super(key: key);

  final int id;
  final String title, category, url;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Image(
          image: AssetImage(
            url,
          ),
          width: 300,
          height: 200,
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(category),
        SizedBox(
          height: 5,
        ),
        Text(
          '\$$price\.0',
          style: TextStyle(color: primaryColor),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                icon: Icon(
                  Icons.add_box,
                  color: Colors.white70,
                ),
                onPressed: () {},
                label: Text(
                  "Add To Cart",
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.remove_red_eye_outlined, color: Colors.black),
                label: Text(
                  "More Details",
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Shopping Cart',
          // style: TextStyle(fontSize: 15, color: Theme.of(context).textTheme.headline1),
          style: Theme.of(context).textTheme.headline5,
        ),
        SizedBox(
          height: 40,
          child: ElevatedButton.icon(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/menu_tran.svg",
                  color: Colors.white70),
              //icon: Icon(Icons.grading_sharp),
              label: Text('Repurchase Report')),
        ),
      ],
    );
  }
}
