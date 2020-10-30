import 'package:flutter/material.dart';
import 'package:spacer/home/ContainerHistory/data.dart';
import 'package:spacer/home/ContainerHistory/name.dart';
import 'package:spacer/home/ContainerHistory/status.dart';
import 'package:spacer/home/ContainerHistory/summ.dart';
import 'package:spacer/home/ContainerHistory/usd.dart';
import 'package:spacer/home/ContainerHistory/uslug.dart';
import 'package:spacer/mechanic/statusColorWidget.dart';
import 'package:spacer/presentation/costum_icon.dart' as costIcons;

Widget historiItem(String name, String data, String uslug, String summ,
    String usd, int index, String status, BuildContext context) {
  Color c7A8BA3 = Color.fromRGBO(122, 139, 163, 1);
  Color c6287A1 = Color.fromRGBO(98, 135, 161, 1);
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(6),
    ),
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height * 0.10,
    child: Row(
      children: [
        dataWidget(data),
        Padding(
          padding: const EdgeInsets.only(
            top: 14,
            left: 9,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              nameWidget(name),
              uslugWidget(uslug),
            ],
          ),
        ),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 12, top: 12),
              child: Row(
                children: [
                  summWidget(summ),
                  usdWidget(usd),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 12, top: 8),
              child: statusWidget(status, context),
            ),
          ],
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Padding(
            padding: const EdgeInsets.only(top: 22, right: 7),
            child: Icon(costIcons.CostumIcon.vector_6),
          ),
        ])
      ],
    ),
  );
}
