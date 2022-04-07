import 'package:untitled3/new_screens/wallet_topup.dart';

import '../Dashboard_screens/drawer.dart';
import 'package:flutter/material.dart';

class orderlisting_today extends StatefulWidget {
  @override
  _orderlisting_todayState createState() => _orderlisting_todayState();
}

class _orderlisting_todayState extends State<orderlisting_today>
    with SingleTickerProviderStateMixin {
  @override
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Drawer(
        elevation: 16.0,
        child: drawer(),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 13.0),
            Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 40.0,
                child: TextField(
                  decoration: new InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(12, 10, 12, 10),
                    hintText: 'Search food nearby',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 0.0, right: 0.0),
                      child: Icon(
                        Icons.search,
                        color: Color(0xFF4F4F4F),
                      ),
                    ),
                    hintStyle: TextStyle(
                      color: Color(0xff4F4F4F),
                      fontSize: 14.0,
                    ),
                    filled: true,
                    fillColor: Color(0xFFF3F3F3),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      borderSide:
                          BorderSide(color: Color(0xFFF3F3F3), width: 0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      borderSide:
                          BorderSide(color: Color(0xFFF3F3F3), width: 0),
                    ),
                  ),
                )),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () => _scaffoldKey.currentState!.openEndDrawer(),
            child: Icon(
              Icons.menu_outlined,
              color: Colors.black,
              size: 30.0,
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 20.0),
                  Text(
                    "Order History",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  for (var i = 0; i <= 5; i++)
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => wallet_topup()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(10.0),
                        padding: EdgeInsets.all(10),
                        height: 90,
                        width: MediaQuery.of(context).size.width,
                        decoration: new BoxDecoration(
                          color: Color(0xffF5F5F5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Order ID: ',
                                  style: TextStyle(
                                      color: Color.fromRGBO(136, 136, 136, 1)),
                                ),
                                Text(
                                  'ACR145786',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Payment Method :',
                                  style: TextStyle(
                                      color: Color.fromRGBO(136, 136, 136, 1)),
                                ),
                                Text(
                                  ' Online',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Date:  ',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(136, 136, 136, 1)),
                                    ),
                                    Text(
                                      '02 feb, 2021',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                Text(
                                  '\$345.00',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Color(0xffF37720),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                ]),
          ),
        ),
      ),
    );
  }
}
