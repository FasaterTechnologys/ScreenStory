import 'package:flutter/material.dart';
import 'package:spacer/db.dart';
import 'package:spacer/home/hader/historyItem.dart';
import 'package:spacer/main.dart';

Widget Content() {
  WorkoutsList wl = WorkoutsList();
  return SliverList(
    delegate: SliverChildBuilderDelegate(
      (BuildContext context, int i) {
        if (i < wl.workouts.length) {
          return Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 1.0,
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                    padding: EdgeInsets.all(8),
                    child: historiItem(
                      wl.workouts[i].title,
                      wl.workouts[i].data,
                      wl.workouts[i].uslug,
                      wl.workouts[i].cena,
                      wl.workouts[i].usd,
                      i,
                      wl.workouts[i].status,
                      context,
                    ))
              ],
            ),
          );
        }
      },
    ),
  );
}
