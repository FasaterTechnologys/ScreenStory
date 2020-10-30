import 'package:flutter/material.dart';

Widget usdWidget(String usd) {
  Color c7A8BA3 = Color.fromRGBO(122, 139, 163, 1);
  return Padding(
    padding: const EdgeInsets.only(left: 4),
    child: Text(usd, style: TextStyle(color: c7A8BA3)),
  );
}
