import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mlm_dashboard/Screens/shoppingcart/shoppingcart.dart';
import 'package:mlm_dashboard/colors.dart';

class ContainerDb extends StatelessWidget {
  const ContainerDb({
    Key key,
    @required this.subMessage,
    @required this.message,
  }) : super(key: key);

  final String subMessage;
  final String message;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      width: 270,
      child: Card(
        color: secondaryColor,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              subMessage,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              message,
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Shape extends StatelessWidget {
  const Shape({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
