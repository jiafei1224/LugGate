


import 'package:flutter/material.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/loading.dart';
import 'package:myapp/pages/choose_location.dart';
import 'package:myapp/pages/sign.dart';
import 'package:myapp/pages/helpsingapore.dart';
import 'package:myapp/pages/helplist.dart';
import 'package:myapp/pages/outputpage.dart';
import 'package:myapp/pages/bertojfk.dart';
import 'package:myapp/pages/report.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:myapp/pages/Second.dart';
import 'package:myapp/pages/damage.dart';
import 'package:myapp/pages/before.dart';





void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
    '/sign': (context) => Sign(),
    '/helplist': (context) => Helplist(),
    '/helpsing': (context) => Helpsg(),
    '/out': (context) => Output(),
    '/berjfk':(context)=> Bertojfk(),
    '/rep':(context) => Report(),
    '/second': (context) => MyApp(),
    '/dam': (context) => Damage(),
    '/bef': (context) => Before(),



  },

));


