import 'package:flutter/material.dart';
import 'package:spacer/home/hader/ButtonRightConstr.dart';

Widget StartWidget(String title, IconData icon, BuildContext context) {
  Color c2f527f = Color.fromRGBO(47, 82, 127, 1);
  double w = MediaQuery.of(context).size.width * 0.43;
  return Row(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.05, top: 12),
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
              width: w,
              height: w * 20 / 18,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 5),
                  Center(
                      child: Icon(
                    icon,
                    color: c2f527f,
                    size: 40,
                  )),
                  SizedBox(height: 7),
                  Text(title,
                      style: TextStyle(
                        fontSize: 16,
                        color: c2f527f,
                        fontWeight: FontWeight.w400,
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
      Spacer(),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Buttons("Продать", Icons.face, context),
          Buttons("Перевести", Icons.auto_awesome_motion, context),
          Buttons("Поменяться", Icons.verified_user_rounded, context),
        ],
      )
    ],
  );
}
