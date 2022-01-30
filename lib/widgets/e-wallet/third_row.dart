import 'package:flutter/material.dart';

import '../../colors.dart';

class ThirdRow extends StatelessWidget {
  const ThirdRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 500,
          width: 410,
          child: Card(
            color: secondaryColor,
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
        SizedBox(
          width: 9.5,
        ),
        SizedBox(
          height: 500,
          width: 410,
          child: Card(
            color: secondaryColor,
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
        SizedBox(
          width: 9.5,
        ),
        SizedBox(
          height: 500,
          width: 410,
          child: Card(
            color: secondaryColor,
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
      ],
    );
  }
}
