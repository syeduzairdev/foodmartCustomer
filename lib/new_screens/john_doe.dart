import 'package:flutter/material.dart';
import 'package:untitled3/Dashboard_screens/terms_condition.dart';
import 'package:untitled3/widgets/widgets.dart';

class john_doe extends StatefulWidget {
  const john_doe({Key? key}) : super(key: key);

  @override
  State<john_doe> createState() => _john_doeState();
}

class _john_doeState extends State<john_doe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios, color: Colors.black),
        title: Row(
          children: [
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/john.png")),
                  shape: BoxShape.circle),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "John Doe",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => terms_condition()),
            );
          },
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/john.png")),
                            shape: BoxShape.circle),
                      ),
                      msg().Msg(context, Color(0xffEAEAEA), Colors.black),
                      Text(
                        "12:35 AM",
                        style: TextStyle(
                          color: Color(0xffB7B7B7),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "12:35 AM",
                        style: TextStyle(
                          color: Color(0xffB7B7B7),
                          fontSize: 10,
                        ),
                      ),
                      msg().Msg(context, Color(0xffBC1C23), Colors.white),
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/john.png")),
                            shape: BoxShape.circle),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/john.png")),
                            shape: BoxShape.circle),
                      ),
                      msg().Msg(context, Color(0xffEAEAEA), Colors.black),
                      Text(
                        "12:35 AM",
                        style: TextStyle(
                          color: Color(0xffB7B7B7),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "12:35 AM",
                        style: TextStyle(
                          color: Color(0xffB7B7B7),
                          fontSize: 10,
                        ),
                      ),
                      msg().Msg(context, Color(0xffBC1C23), Colors.white),
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/john.png")),
                            shape: BoxShape.circle),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/john.png")),
                            shape: BoxShape.circle),
                      ),
                      msg().Msg(context, Color(0xffEAEAEA), Colors.black),
                      Text(
                        "12:35 AM",
                        style: TextStyle(
                          color: Color(0xffB7B7B7),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "12:35 AM",
                        style: TextStyle(
                          color: Color(0xffB7B7B7),
                          fontSize: 10,
                        ),
                      ),
                      msg().Msg(context, Color(0xffBC1C23), Colors.white),
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/john.png")),
                            shape: BoxShape.circle),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/john.png")),
                            shape: BoxShape.circle),
                      ),
                      msg().Msg(context, Color(0xffEAEAEA), Colors.black),
                      Text(
                        "12:35 AM",
                        style: TextStyle(
                          color: Color(0xffB7B7B7),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "12:35 AM",
                        style: TextStyle(
                          color: Color(0xffB7B7B7),
                          fontSize: 10,
                        ),
                      ),
                      msg().Msg(context, Color(0xffBC1C23), Colors.white),
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/john.png")),
                            shape: BoxShape.circle),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
