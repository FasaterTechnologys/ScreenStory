import 'package:flutter/material.dart';

Widget logo() {
  return Positioned(
    top: 0.0,
    left: 0.0,
    right: 0.0,
    child: AppBar(
      centerTitle: true,
      leading: Padding(
        padding: EdgeInsets.only(
          bottom: 20,
          right: 13,
        ),
        child: Icon(Icons.money, size: 24),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(bottom: 20, right: 10),
          child: Icon(Icons.money, size: 24),
        )
      ],
      title: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Text(
          "I N T E G R O N",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            //fontFamily: "Хуй знает какой шрифт",
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    ),
  );
}
