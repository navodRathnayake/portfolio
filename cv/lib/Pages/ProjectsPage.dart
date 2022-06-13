import 'package:cv/custom/customWidget.dart';
import 'package:cv/ulits/const.dart';
import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double padding = 40;
    final ThemeData themedata = Theme.of(context);
    return Column(
      children: [
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: COLOR_GREY_CANVAS,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: Column(
                    children: [
                      verticalBox(padding / 2),
                      Text(
                        "All Project details are attached in Linkedin and github profiles",
                        style: themedata.textTheme.bodyText1,
                      ),
                      verticalBox(padding / 2),
                    ],
                  ),
                ),
              ),
              verticalBox(padding),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My projects list",
                    style: themedata.textTheme.headline3,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: COLOR_RED,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Text(
                        "18 Repositories",
                        style: themedata.textTheme.headline3,
                      ),
                    ),
                  )
                ],
              ),
              verticalBox(padding),
            ],
          ),
        ),
        ProjectList(),
      ],
    );
  }
}
