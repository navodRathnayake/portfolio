import 'package:cv/custom/customWidget.dart';
import 'package:cv/ulits/const.dart';
import 'package:flutter/material.dart';

class References extends StatelessWidget {
  const References({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double canvas = size.width * 0.7;
    return Container(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: ReferenceData(name: name1, tp: tp1, email: email1)),
            horizontalBox(80),
            Container(
                child: ReferenceData(name: name2, tp: tp2, email: email2)),
          ],
        ),
      ),
    );
  }
}
