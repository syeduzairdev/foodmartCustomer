import 'package:flutter/material.dart';
import 'package:untitled3/screen1.dart';
import 'package:untitled3/screen3.dart';
import 'package:untitled3/widgets/widgets.dart';

class screen2 extends StatefulWidget {
  const screen2({Key? key}) : super(key: key);

  @override
  _screen2State createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (BuildContext context) => screen1()),
          );
        },
        child: Column(
          children: [
            //widgets().button(context, 200.0, Colors.grey, Icons.share, 'Talha', 25.0)
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Rectangle.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
