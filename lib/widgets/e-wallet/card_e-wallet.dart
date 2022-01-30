import 'package:flutter/material.dart';
import 'package:mlm_dashboard/colors.dart';

class CardEwallet extends StatelessWidget {
  const CardEwallet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 249.5,
      height: 160,
      child: Card(
        elevation: 8,
        color: secondaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.money,
              size: 58,
              color: Colors.green,
            ),
            SizedBox(
              width: 10,
            ),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Credited"),
                    SizedBox(
                      height: 8,
                    ),
                    Text("\$ 2,126.58")
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
