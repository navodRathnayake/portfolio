import 'package:cv/Pages/AboutPage.dart';
import 'package:cv/Pages/ContactPage.dart';
import 'package:cv/Pages/ProjectsPage.dart';
import 'package:cv/ulits/const.dart';
import 'package:flutter/material.dart';

Widget verticalBox(double height) {
  return SizedBox(
    height: height,
  );
}

Widget horizontalBox(double width) {
  return SizedBox(
    width: width,
  );
}

class MyAvatar extends StatelessWidget {
  late double width;
  late double height;
  late double radius1;
  late double radius2;
  MyAvatar(
      {Key? key,
      required this.height,
      required this.width,
      required this.radius1,
      required this.radius2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const color = Color(0xed2224);
    return Container(
      width: width,
      height: height,
      child: CircleAvatar(
        backgroundColor: Colors.red,
        radius: radius2,
        child: CircleAvatar(
          backgroundImage: AssetImage("assest/images/me.jpg"),
          radius: radius1,
        ),
      ),
    );
  }
}

class SettingsButton extends StatelessWidget {
  final double width;
  final double height;
  final Widget child;
  final EdgeInsets padding;
  SettingsButton(
      {Key? key,
      required this.width,
      required this.height,
      required this.child,
      required this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Center(
          child: child,
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        border: Border.all(color: Colors.black, width: 2),
      ),
    );
  }
}

Widget tabBar(TabController tabController, double padding) {
  return Align(
    alignment: Alignment.centerLeft,
    child: TabBar(
        indicatorPadding: EdgeInsets.only(left: 0, right: padding),
        indicator: CircleTabIndicator(color: Colors.black, radius: 5.0),
        controller: tabController,
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey,
        labelPadding: EdgeInsets.only(left: 0, right: padding),
        isScrollable: true,
        tabs: [
          Tab(
            text: "About",
          ),
          Tab(
            text: "Projects",
          ),
          Tab(
            text: "Contact",
          ),
        ]),
  );
}

Widget tabBarView(TabController tabcontroller) {
  return Container(
    width: double.maxFinite,
    height: 1150,
    child: TabBarView(controller: tabcontroller, children: [
      AboutPage(padding: 40),
      ProjectsPage(),
      ContactPage(),
    ]),
  );
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;

  CircleTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final double radius;
  late Color color;

  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    late Paint _paint;
    _paint = Paint()..color = color;
    _paint = _paint..isAntiAlias = true;
    final Offset circleOffset =
        offset + Offset(cfg.size!.width / 2, cfg.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}

class ChoiceOption extends StatelessWidget {
  final String text;

  const ChoiceOption({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: COLOR_GREY.withAlpha(35),
        borderRadius: BorderRadius.circular(15.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
      margin: const EdgeInsets.only(
        right: 20,
        bottom: 20,
      ),
      child: Text(
        text,
        style: themeData.textTheme.headline5,
      ),
    );
  }
}

class ReferenceData extends StatelessWidget {
  final String name;
  final String tp;
  final String email;
  ReferenceData(
      {Key? key, required this.name, required this.tp, required this.email})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
          color: COLOR_GREY_CANVAS, borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalBox(40),
            Text(
              name,
              style: themeData.textTheme.headline3,
            ),
            verticalBox(10),
            Text(
              position,
              style: themeData.textTheme.headline3,
            ),
            verticalBox(10),
            Text(
              campus,
              style: themeData.textTheme.headline3,
            ),
            verticalBox(10),
            Text(
              campusAddress,
              style: themeData.textTheme.headline3,
            ),
            verticalBox(10),
            Text(
              tp,
              style: themeData.textTheme.headline3,
            ),
            verticalBox(10),
            Text(
              email,
              style: themeData.textTheme.headline3,
            ),
            verticalBox(40),
          ],
        ),
      ),
    );
  }
}

const List myList = ["sas", "sas", "sasa", "asas"];

class ProjectList extends StatelessWidget {
  const ProjectList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themedata = Theme.of(context);
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
        width: double.maxFinite,
        child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: projectJsonData.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    leading:
                        LeadingIcon(text: projectJsonData[index]["leading"]),
                    title: Text(
                      projectJsonData[index]["title"],
                      style: themedata.textTheme.headline3,
                    ),
                    subtitle: Text(projectJsonData[index]["langs"]),
                    onTap: () {},
                  ),
                  const Divider(),
                ],
              );
            }),
      ),
    );
  }
}

class LeadingIcon extends StatelessWidget {
  final String text;
  const LeadingIcon({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      child: CircleAvatar(
        radius: 50,
        child: Text(text),
        backgroundColor: COLOR_GREY_CANVAS,
      ),
    );
  }
}
