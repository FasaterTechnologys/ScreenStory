import 'package:flutter/material.dart';
import 'package:spacer/home/hader/ContainerButtons.dart';
import 'package:spacer/home/hader/StartCartsWidget.dart';
import 'package:spacer/presentation/costum_icon.dart' as costIcons;

Widget StartWindow(BuildContext context) {
  Color cBackground = Color.fromRGBO(250, 250, 250, 1);
  return SliverList(
    delegate: SliverChildListDelegate(
      [
        StartsCarts(context),
        containerButtons(context),
      ],
    ),
  );
}
