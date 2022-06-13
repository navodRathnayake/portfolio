import 'package:cv/custom/customWidget.dart';
import 'package:cv/ulits/const.dart';
import 'package:flutter/material.dart';

final aboutKey = GlobalKey();

class AboutPage extends StatelessWidget {
  late double padding;
  AboutPage({Key? key, required this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themedata = Theme.of(context);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
                color: COLOR_GREY_CANVAS,
                borderRadius: BorderRadius.circular(20.0)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalBox(padding),
                  Text(
                    phrase1,
                    style: themedata.textTheme.bodyText1,
                  ),
                  Text(
                    phrase2,
                    style: themedata.textTheme.bodyText1,
                  ),
                  Text(
                    phrase3,
                    style: themedata.textTheme.bodyText1,
                  ),
                  Text(
                    phrase4,
                    style: themedata.textTheme.bodyText1,
                  ),
                  Text(
                    phrase5,
                    style: themedata.textTheme.bodyText1,
                  ),
                  verticalBox(padding)
                ],
              ),
            ),
          ),
          verticalBox(padding),
          Text(
            "Familier Programing Languages",
            style: themedata.textTheme.headline3,
          ),
          verticalBox(padding / 4),
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: COLOR_GREY_CANVAS,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalBox(padding / 2),
                  Wrap(
                    alignment: WrapAlignment.start,
                    children: [
                      "C",
                      "C++",
                      "C#",
                      "Java",
                      "Python",
                      "PHP",
                      "Dart"
                    ].map((filter) => ChoiceOption(text: filter)).toList(),
                  ),
                  verticalBox(padding / 4),
                ],
              ),
            ),
          ),
          verticalBox(padding),
          Text("Other framewaork & platforms",
              style: themedata.textTheme.headline3),
          verticalBox(padding / 4),
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: COLOR_GREY_CANVAS,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalBox(padding / 2),
                  Wrap(
                    alignment: WrapAlignment.start,
                    children: ["firebase", "flutter", "mssql", "& more"]
                        .map((filter) => ChoiceOption(text: filter))
                        .toList(),
                  ),
                  verticalBox(padding / 4),
                ],
              ),
            ),
          ),
          verticalBox(padding),
          Text("More experienced in", style: themedata.textTheme.headline3),
          verticalBox(padding / 4),
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: COLOR_GREY_CANVAS,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalBox(padding / 2),
                  Wrap(
                    alignment: WrapAlignment.start,
                    children: ["Cenema4D", "3DMAX", "AE", "Ps"]
                        .map((filter) => ChoiceOption(text: filter))
                        .toList(),
                  ),
                  verticalBox(padding / 4),
                ],
              ),
            ),
          ),
          verticalBox(padding),
          Text(
            "College Life",
            style: themedata.textTheme.headline3,
          ),
          verticalBox(padding / 4),
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: COLOR_GREY_CANVAS,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalBox(padding / 4),
                  Text(
                    "Senior prefect at Wariyapola Sri Sumangala College Kandy.\n",
                    style: themedata.textTheme.bodyText1,
                  ),
                  Text(
                    "Member of St John Ambulance Service at Wariyapola Sri Sumangala Collage Kandy.\n",
                    style: themedata.textTheme.bodyText1,
                  ),
                  Text(
                    "Co-Ordinator of Science Society at Vidyartha Collage Kandy.\n",
                    style: themedata.textTheme.bodyText1,
                  ),
                  verticalBox(padding / 2),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
