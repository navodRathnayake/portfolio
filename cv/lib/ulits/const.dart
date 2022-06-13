import 'package:flutter/material.dart';

const String phrase1 =
    "Following BSc (Hons) Computing degree program at NIBM that is offering by Coventry University, UK.";
const String phrase2 =
    "Successfully completed Diploma in Software Engineering at NIBM.";
const String phrase3 =
    "Following Higher National Diploma in Software Engineering at NIBM.";
const String phrase4 =
    "Handed one real world project and more powerful projects that are programmed for CWs.";
const String phrase5 = "Certificate in Computer Science at IBA Campus.";

// references data-set

const String name1 = "Mrs. Inoka Abhayasinghe";
const String name2 = "Mr. Sandaruwan Herath ";

const String tp1 = "077 7 807 383";
const String email1 = "inoka.abayasinghe@nibm.lk ";

const String tp2 = "071 8 424 356";
const String email2 = "sandaruwan.herath@nibm.lk ";

const String position = "Consultant / Lecturer-IT";
const String campus = "National Institute of \nBusiness Management";
const String campusAddress = "No: 02, Asgiriya Road, Kandy";

const String linefollowingData =
    "It’s a line following robot with two gear motors , caster wheel and specific hand movements. The robot can identify barrier objects and have the ability to replace those objects from his destination. The project has included two DVD stepper motors that represent X and Y axis graphically and this mechanism helps to make two dimensional movements of the hand. (* followed 2wd vehicle differential mechanism for gear motors rotations )Its included two 12 v battery packs and each battery packs have 6 li-ion batteries that collected from scrapped laptop batteries.\nOverall project, its included two ARDUINO UNO boards, three L298N motor drivers, three servo motors, two IR sensor modules , two LDR sensor modules and two LEDsTwo LDR sensor modules and two LEDs help to manage processes between left and right Arduino uno boards with specific programmed scenario.\n\nFuture Enhancement :\n\n1. Add Battery Management System ( Laptop BMS Circuit )\n2. Add powerful stepper motor for Y axis\n3. Enhance this robot using image processing and camera module\n4. Hide the complexity of wiring";

const List projectJsonData = [
  {
    "title": "FlutterDarkModeProvider",
    "leading": "1",
    "langs": "Flutter - Dart",
    "description":
        "The project was developed for manage themedata using provider.The Project has done with two pages including home-page & settings-page.In settings, The App user have the ability to change theme mode of the entire app.",
    "github": "https://github.com/navodRathnayake/FlutterDarkModeProvider",
  },
  {
    "title": "DAAM Game",
    "leading": "2",
    "langs": "Python / Data Structures & Algorithms",
    "description":
        "The following project has developed for the module called Data Structures & Algorithms.\n1.0.0V",
    "github": "https://github.com/navodRathnayake/DataStructuresAndAlgo",
  },
  {
    "title": "BloodBank",
    "leading": "3",
    "langs": "C#",
    "description":
        "The project called BloodBank is a group project for GUI Applications module in diploma. Its included logings, registrations, email veryfications and lab functionalities as well",
    "github": "https://github.com/navodRathnayake/BloodBank",
  },
  {
    "title": "Car Sale - CLI",
    "leading": "4",
    "langs": "C /  File handling",
    "description":
        "The following project was developed for the programming fundemental module in diploma.\nThe software has able to manage plethora of functionalities.Added auto updating GUI using file handling and little bit of html",
    "github": "https://github.com/navodRathnayake/CarSale",
  },
  {
    "title": "MediCenter",
    "leading": "5",
    "langs": "C++ / File handling / DB",
    "description":
        "The following project was developed for the OOP module in diploma.\nAdded relational database logics using file handling",
    "github": "https://github.com/navodRathnayake/MediCentereC-",
  },
  {
    "title":
        "Functional Line Following Robot with Two Dimensional Hand Movement",
    "leading": "6",
    "langs": "Arduino based project",
    "description": linefollowingData,
    "github":
        "https://www.linkedin.com/in/navoduchithangarathnayake/recent-activity/shares/",
  },
  {
    "title": "VendMaster",
    "leading": "7",
    "langs": "C# / Java / firebase / POS",
    "description":
        "The vendmaster project was developed by a team for final year project. its a real world project and developed a windows application and android app. Used local database and firebase real time database for manage data in whole platform.\nHardware devices : Barcode reader and 5mm thermal printer ",
    "github": "Commercial perposed",
  },
  {
    "title": "Android-Assignment based project",
    "leading": "8",
    "langs": "In class Assignment",
    "description": linefollowingData,
    "github": "https://github.com/navodRathnayake/AndroidAssignment",
  },
  {
    "title": "StudentManagementSystem",
    "leading": "9",
    "langs": "Spring",
    "description": "The project was developed for EAD module.",
    "github": "https://github.com/navodRathnayake/StudentManagementSystem",
  },
  {
    "title": "Best Cheaf",
    "leading": "10",
    "langs": "PHP / HTML / CSS / JS",
    "description": "The project was developed for WAD module.",
    "github": "https://github.com/navodRathnayake/WebProjectCW",
  },
];

const List contact = [
  {
    "type": "email",
    "data": "navodhosts@gmail.com",
  },
  {
    "type": "LinkedIn",
    "data": "https://www.linkedin.com/in/navoduchithangarathnayake/",
  },
  {"type": "\ngithub", "data": "https://github.com/navodRathnayake"},
  {
    "type": "\nTelephone",
    "data": "\n+9478-681-8808\n+9476-652-2070\n+9481-313-1134\n"
  },
  {
    "type": "\nAddress",
    "data": "\nNo.39/A,\nPethiyagoda,\nGelioya\n",
  }
];

const COLOR_BLACK = Color.fromRGBO(48, 47, 48, 1.0);
const COLOR_GREY = Color.fromRGBO(141, 141, 141, 1.0);

const COLOR_WHITE = Colors.white;
const COLOR_DARK_BLUE = Color.fromRGBO(20, 25, 45, 1.0);
const COLOR_RED = Color.fromRGBO(237, 34, 36, 0.8);
const COLOR_GREY_CANVAS = Color.fromRGBO(235, 235, 235, 1.0);

const TextTheme TEXT_THEME_DEFAULT = TextTheme(
    headline1: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 30),
    headline2: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 22),
    headline3: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 20),
    headline4: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 16),
    headline5: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 14),
    headline6: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 12),
    bodyText1: TextStyle(
        color: COLOR_BLACK,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 1.5),
    bodyText2: TextStyle(
        color: COLOR_GREY,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 1.5),
    subtitle1: TextStyle(
        color: COLOR_BLACK, fontSize: 12, fontWeight: FontWeight.w400),
    subtitle2: TextStyle(
        color: COLOR_GREY, fontSize: 12, fontWeight: FontWeight.w400));

const TextTheme TEXT_THEME_SMALL = TextTheme(
    headline1: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 22),
    headline2: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 20),
    headline3: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 16),
    headline4: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 14),
    headline5: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 12),
    headline6: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 10),
    bodyText1: TextStyle(
        color: COLOR_BLACK,
        fontSize: 12,
        fontWeight: FontWeight.w500,
        height: 1.5),
    bodyText2: TextStyle(
        color: COLOR_GREY,
        fontSize: 12,
        fontWeight: FontWeight.w500,
        height: 1.5),
    subtitle1: TextStyle(
        color: COLOR_BLACK, fontSize: 10, fontWeight: FontWeight.w400),
    subtitle2: TextStyle(
        color: COLOR_GREY, fontSize: 10, fontWeight: FontWeight.w400));
