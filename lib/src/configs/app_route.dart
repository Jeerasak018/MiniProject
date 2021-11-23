import 'package:flutter/material.dart';
import 'package:mini/src/pages/apartment/apartment_page.dart';
import 'package:mini/src/pages/condo/condo_page.dart';
import 'package:mini/src/pages/dormitory/dormitory_page.dart';
import 'package:mini/src/pages/home/home_page.dart';
import 'package:mini/src/pages/info/info_page.dart';
import 'package:mini/src/pages/login/login_page.dart';
import 'package:mini/src/pages/mansion/mansion_page.dart';
import 'package:mini/src/pages/naninfo/afnan_info_page.dart';
import 'package:mini/src/pages/register/register_page.dart';
import 'package:mini/src/pages/roomtype/room_type_page.dart';
import 'package:mini/src/pages/roomtype/roomadd_page.dart';



class AppRoute{
  static const homeRoute = 'home';
  static const infoRoute = 'info';
  static const naninfo = 'afnaninfo';
  static const loginRoute = 'login';
  static const registerRoute = 'register';
  static const condoRoute = 'condo';
  static const apartmentRoute = 'apartment';
  static const mansionRoute = 'mansion';
  static const dormitoryRoute = 'dormitory';
  static const roomtypeRoute = 'roomtype';
  static const roomaddRoute = 'roomadd';




  final _route = <String, WidgetBuilder>{
    homeRoute: (comtext) => HomePage(),
    infoRoute: (comtext) => InfoPage(),
    naninfo: (comtext) => NanInfoPage(),
    loginRoute: (comtext) => LoginPage(),
    registerRoute: (comtext) => RegisterPage(),
    condoRoute: (comtext) => CondoPage(),
    apartmentRoute: (comtext) => ApartmentPage(),
    mansionRoute: (comtext) => MansionPage(),
    dormitoryRoute: (comtext) => DormitoryPage(),
    roomtypeRoute: (comtext) => RoomtypePage(),
    roomaddRoute: (comtext) => RoomaddPage(),



  };

  get getAll => _route;
}//end class