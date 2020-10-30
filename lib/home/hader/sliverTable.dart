import 'package:flutter/material.dart';

class MyDynamicHeader extends SliverPersistentHeaderDelegate {
  int index = 0;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final Color color = Colors.primaries[index];
        final double percentage = 1;
        if (++index > Colors.primaries.length - 1) index = 0;

        return Container(
          color: Color.fromRGBO(250, 250, 250, 1),
          height: constraints.maxHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 3,
                      ),
                      child: Text("История транзакций",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontFamily: "Open Sans")),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 23,
                      ),
                      child: Text("Дата Контрагент / Операция",
                          style: TextStyle(fontSize: 10, color: Colors.black)),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Text(
                          "Без фильтра",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Open Sans",
                              color: Color.fromRGBO(47, 82, 127, 1)),
                        ),
                        Icon(
                          Icons.sort_sharp,
                          color: Color.fromRGBO(47, 82, 127, 1),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 8,
                    ),
                    child: Text("Сумма Токен",
                        style: TextStyle(fontSize: 10, color: Colors.black)),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate _) => true;

  @override
  double get maxExtent => 80.0;

  @override
  double get minExtent => 80.0;
}
