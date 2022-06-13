import 'package:cv/custom/customWidget.dart';
import 'package:cv/ulits/const.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themedata = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Positioned(
              child: Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: COLOR_GREY_CANVAS,
                    borderRadius: BorderRadius.circular(15.0)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      verticalBox(20),
                      Text(
                        "I'm lookig for an internship in mobile application development (flutter).\nIf your are interesting cantact me !",
                        style: themedata.textTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: COLOR_RED,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "Developer MSG",
                  style: themedata.textTheme.bodyText1,
                ),
              ),
            )
          ],
        ),
        verticalBox(40),
        Text(
          "Contact Details",
          style: themedata.textTheme.headline3,
        ),
        verticalBox(40),
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: contact.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.add, color: COLOR_RED),
                title: Text(
                  contact[index]["type"],
                  style: themedata.textTheme.headline3,
                ),
                subtitle: Text(
                  contact[index]["data"],
                  style: themedata.textTheme.headline5,
                ),
              );
            }),
        verticalBox(40),
        Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: COLOR_GREY_CANVAS,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalBox(20),
                Text(
                  "Release Note",
                  style: themedata.textTheme.headline3,
                ),
                verticalBox(20),
                Text(
                    "The following project has developed and the designing by myself\nVersion : 1.0.0V\nDeveloped at free time using flutter framework\nIn web view, References cards do not swip but in mobile view no problem at all"),
                Text(
                  "min screen resolution : 480 x 960 pixels",
                  style: TextStyle(color: COLOR_RED),
                ),
                verticalBox(40),
              ],
            ),
          ),
        ),
        verticalBox(40),
        Container(
          decoration: BoxDecoration(
            color: COLOR_GREY_CANVAS,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalBox(10),
                Text(
                    "I do hereby certify that the above-mentioned details are true and accurate to the best of my knowledge. "),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("\nYours faithfully,\nRathnayake R.M.N.U"),
                  ],
                ),
                verticalBox(20),
              ],
            ),
          ),
        )
      ],
    );
  }
}
