import 'package:flutter/material.dart';
import 'package:spacer/home/buttonDown.dart';
import 'package:spacer/home/hader/buttons.dart';
import 'package:spacer/presentation/costum_icon.dart' as costIcons;

Widget containerButtons(BuildContext context) {
  Color cBackground = Color.fromRGBO(250, 250, 250, 1);
  return Container(
    color: cBackground,
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height * 0.39,
    child: Column(
      children: [
        StartWidget("Купить \nтокены", Icons.phone, context),
        ButtonDown(
            "Делигировать", costIcons.CostumIcon.vector_stroke__3, context),
      ],
    ),
  );
}
