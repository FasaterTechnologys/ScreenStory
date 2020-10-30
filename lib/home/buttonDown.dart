import 'package:flutter/material.dart';

Widget ButtonDown(String title, IconData icon, BuildContext context) {
  Color c2f527f = Color.fromRGBO(47, 82, 127, 1);
  return Padding(
    padding: const EdgeInsets.only(left: 5, top: 12),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
          )
        ],
      ),
      width: MediaQuery.of(context).size.width * 0.92,
      height: MediaQuery.of(context).size.height * 0.07,
      child: Center(
          child: Padding(
        padding: const EdgeInsets.only(left: 90),
        child: Row(
          children: [
            Center(child: Icon(icon, color: c2f527f)),
            SizedBox(width: 10),
            Center(
              child:
                  Text(title, style: TextStyle(fontSize: 16, color: c2f527f)),
            ),
          ],
        ),
      )),
    ),
  );
}
