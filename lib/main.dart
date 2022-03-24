import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled3/new_screens/john_doe.dart';
import 'package:untitled3/new_screens/order_tracking.dart';
import 'package:untitled3/new_screens/place_order.dart';
import 'package:untitled3/screen1.dart';
import 'package:untitled3/screen2.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: screen2());
  }
}
