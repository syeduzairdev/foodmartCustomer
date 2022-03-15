import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled3/screen1.dart';
import 'package:untitled3/screen3.dart';
import 'package:untitled3/screen4.dart';
import 'package:untitled3/screen5.dart';
import 'package:untitled3/screen6.dart';
import 'package:untitled3/screen7.dart';
import 'package:untitled3/screen8.dart';
import 'package:untitled3/screen9.dart';
import 'package:untitled3/signin_register_screens/sign_in.dart';
import 'package:untitled3/uzair%20grid/grids.dart';

import 'drawer_screens/impression_screen.dart';
import 'screen2.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor:   Color(0xffBC1C23),
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: screen2()
    );
  }
}


