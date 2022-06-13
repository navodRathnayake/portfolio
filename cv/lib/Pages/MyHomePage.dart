import 'package:cv/Pages/AboutPage.dart';
import 'package:cv/Pages/References.dart';
import 'package:cv/custom/customWidget.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    const double padding = 40.0;
    final Size size = MediaQuery.of(context).size;
    double canvas = size.width * 0.67;
    double settingsPara = 60;
    double radius1 = 75;
    double radius2 = 85;
    final ThemeData themedata = Theme.of(context);
    if (size.width < 750) {
      canvas = size.width;
      settingsPara = 50;
      radius1 = 45;
      radius2 = 65;
    }
    TabController tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Container(
            width: size.width,
            height: size.height,
            color: Colors.white,
            child: Center(
              child: Container(
                width: canvas,
                height: size.height,
                color: Colors.white,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      verticalBox(padding),
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: padding),
                        child: Container(
                          child: Row(
                            children: [
                              MyAvatar(
                                height: canvas * (1 / 4),
                                width: canvas * (1 / 4),
                                radius1: radius1,
                                radius2: radius2,
                              ),
                              horizontalBox(padding),
                              Container(
                                width:
                                    canvas - (canvas * (1 / 4) + padding * 3),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        verticalBox(padding / 4),
                                        Text("HEY I'm",
                                            style:
                                                themedata.textTheme.headline3),
                                        Text(
                                          "Navod",
                                          style: themedata.textTheme.headline1,
                                        ),
                                        verticalBox(10),
                                        Text(
                                          "Rathnayake",
                                          style: themedata.textTheme.headline1,
                                        ),
                                        Text(
                                          "Undergraduate",
                                          style: themedata.textTheme.headline5,
                                        )
                                      ],
                                    ),
                                    Container(
                                      height: canvas * (1 / 4),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SettingsButton(
                                              width: settingsPara,
                                              height: settingsPara,
                                              child: IconButton(
                                                icon: Icon(Icons.settings),
                                                onPressed: () {},
                                              ),
                                              padding: EdgeInsets.all(8.0)),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: padding),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            verticalBox(padding),
                            tabBar(tabController, padding),
                            verticalBox(padding),
                            tabBarView(tabController),
                            Text(
                              "References",
                              style: themedata.textTheme.headline3,
                            ),
                            verticalBox(padding / 4),
                            References(),
                            verticalBox(padding),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
