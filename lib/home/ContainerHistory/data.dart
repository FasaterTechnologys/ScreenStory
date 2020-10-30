import 'package:flutter/material.dart';

Widget dataWidget(String data) {
  Color c6287A1 = Color.fromRGBO(98, 135, 161, 1);
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.only(top: 14, left: 12),
        child: Row(
          children: [
            Text(
              data,
              style: TextStyle(
                color: c6287A1,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
