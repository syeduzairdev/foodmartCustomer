import 'package:flutter/material.dart';
import 'package:untitled3/widgets/widgets.dart';

class notification extends StatefulWidget {
  const notification({Key? key}) : super(key: key);

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.close,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Notifications",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Mark as read",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xffF37720),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 17,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Container(
                            alignment: Alignment.topRight,
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                                color: Colors.black, shape: BoxShape.circle),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Your password has been\nsuccessfully changed.",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "Jul 23,2022 at 6:40 PM",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff68717A),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Color(0xffF37720), shape: BoxShape.circle),
                      child: Icon(
                        Icons.lock,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Divider(),
                SizedBox(
                  height: 15,
                ),
                noti().Noti(
                    Colors.black,
                    Colors.black,
                    "Thanks you for booking a\nmeeting with us.",
                    "Kevin Dukkon   Jul 21,2022 at 6:52 PM",
                    "assets/q.png"),
                SizedBox(
                  height: 17,
                ),
                noti().Noti(
                    Color(0xffF37720),
                    Color(0xffF37720),
                    "Great news! We are launching\nOur 5th DLE Senior Living.",
                    "Kevin Dukkon  Jul 21,2022 at 6:52 PM",
                    "assets/w.png"),
                SizedBox(
                  height: 17,
                ),
                noti().Noti(
                    Colors.black,
                    Colors.black,
                    "Thanks you for booking a\nmeeting with us.",
                    "Kevin Dukkon   Jul 21,2022 at 6:52 PM",
                    "assets/e.png"),
                SizedBox(
                  height: 17,
                ),
                noti().Noti(
                    Color(0xffF37720),
                    Color(0xffF37720),
                    "Great news! We are launching\nOur 5th DLE Senior Living.",
                    "Kevin Dukkon   Jul 21,2022 at 6:52 PM",
                    "assets/r.png"),
                SizedBox(
                  height: 17,
                ),
                noti().Noti(
                    Colors.black,
                    Colors.black,
                    "Great news! We are launching\nOur 5th DLE Senior Living.",
                    "Kevin Dukkon   Jul 21,2022 at 6:52 PM",
                    "assets/t.png"),
                SizedBox(
                  height: 17,
                ),
                noti().Noti(
                    Colors.black,
                    Colors.black,
                    "Great news! We are launching\nOur 5th DLE Senior Living.",
                    "Kevin Dukkon   Jul 21,2022 at 6:52 PM",
                    "assets/y.png"),
                SizedBox(
                  height: 17,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
