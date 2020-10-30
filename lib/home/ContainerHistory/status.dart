import 'package:flutter/material.dart';
import 'package:spacer/mechanic/statusColorWidget.dart';

Widget statusWidget(String status, BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: statusColor(status),
    ),
    child: Center(
        child: Text(status,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 10,
                color: Colors.white))),
    width: MediaQuery.of(context).size.width * 0.20,
    height: MediaQuery.of(context).size.height * 0.025,
  );
}
