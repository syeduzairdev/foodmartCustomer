import 'package:flutter/material.dart';
import 'package:untitled3/new_screens/payment_metod.dart';
import 'package:untitled3/new_screens/wallet.dart';

import '../widgets/button.dart';

class payment_detail extends StatefulWidget {
  const payment_detail({Key? key}) : super(key: key);

  @override
  State<payment_detail> createState() => _payment_detailState();
}

class _payment_detailState extends State<payment_detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios, color: Colors.black),
        title: Text(
          "Payment Details",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 12, right: 12, top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Method",
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Color(0xffA9A1A1),
                      fontSize: 16),
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/paypal.png'))),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/klarna.png'))),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/visa.png'))),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Color(0xff979797),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  "Details",
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Color(0xffA9A1A1),
                      fontSize: 16),
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 1,
                    color: Color(0xffA9A1A1),
                  )),
                  child: TextField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      hintStyle: TextStyle(
                        height: 5,
                      ),
                      labelText: 'Card Number',
                      labelStyle: TextStyle(
                        fontSize: 14,
                        color: Color(0xffA9A1A1),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 1,
                    color: Color(0xffA9A1A1),
                  )),
                  child: TextField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      hintStyle: TextStyle(height: 7),
                      labelText: 'Card@holder Name',
                      labelStyle: TextStyle(
                        fontSize: 14,
                        color: Color(0xffA9A1A1),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 1,
                    color: Color(0xffA9A1A1),
                  )),
                  child: Row(
                    children: [
                      Flexible(
                        child: TextField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            hintStyle: TextStyle(height: 7),
                            labelText: 'Expire Date',
                            labelStyle: TextStyle(
                              fontSize: 14,
                              color: Color(0xffA9A1A1),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: VerticalDivider(
                          color: Color(0xffCDCDCD),
                        ),
                      ),
                      Flexible(
                        child: TextField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            hintStyle: TextStyle(height: 7),
                            labelText: 'Cvv',
                            labelStyle: TextStyle(
                              fontSize: 14,
                              color: Color(0xffA9A1A1),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Save my card details",
                      style: TextStyle(
                        color: Color(0xffA9A1A1),
                        fontSize: 11,
                      ),
                    ),
                    Switch(
                      focusColor: Color(0xffA44145),
                      activeColor: Color(0xffA44145),
                      value: true,
                      onChanged: (bool state) {},
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => wallet()));
                    },
                    child: button().Button("SUBMIT")),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
