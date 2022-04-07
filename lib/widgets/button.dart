import 'package:flutter/material.dart';

Widget _buildButton(
    BuildContext context, VoidCallback route, Color color, name) {
  return Container(
    height: 10,
    width: 115,
    child: MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: color,
      child: Text(
        name,
        style: TextStyle(
          fontFamily: 'Roboto',
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
      ),
      onPressed: route,
    ),
  );
}

class CustomButton extends StatelessWidget {
  CustomButton({required this.route, this.name});

  final VoidCallback route;

  final name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Color(0xffF37720),
        child: Text(
          name,
          style: TextStyle(
            fontFamily: 'Roboto',
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
        onPressed: route,
      ),
    );
  }
}

class onboardingbutton extends StatelessWidget {
  onboardingbutton(
      {required this.route, this.color = Colors.white30, this.name});

  final VoidCallback route;
  final Color color;
  final name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 220,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: color,
        child: Text(
          name,
          style: TextStyle(
            fontFamily: 'Roboto',
            color: Colors.red,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
        onPressed: route,
      ),
    );
  }
}

class button {
  Widget Button(txt) {
    return Container(
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
          color: Color(0xffF37720), borderRadius: BorderRadius.circular(15)),
      child: Center(
        child: Text(
          txt,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
