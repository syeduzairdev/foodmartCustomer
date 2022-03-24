import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/new_screens/order_tracking.dart';
import 'package:untitled3/new_screens/wallet.dart';
import 'package:untitled3/screen9.dart';
import 'package:untitled3/widgets/button.dart';
import 'package:untitled3/widgets/widgets.dart';

class screen7 extends StatelessWidget {
  const screen7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 198,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('assets/Order.png'))),
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 45.0),
                  child: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),
            ),
            Container(
              // height: MediaQuery.of(context).size.height*0.9,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Text(
                      'Order Details',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  sc7()
                      .text(context, 'Your order name', 'Sea Food', 0xff616161),
                  SizedBox(
                    height: 10.0,
                  ),
                  sc7().text(context, 'Quantity', '1', 0xff616161),
                  SizedBox(
                    height: 10.0,
                  ),
                  sc7().text(context, 'Price', '\$234,45', 0xff616161),
                  SizedBox(
                    height: 10.0,
                  ),
                  sc7().text(context, 'Restaurant Address',
                      'WASHINGTON \nD.C.. 1607 23rd', 0xff616161),
                  SizedBox(
                    height: 10.0,
                  ),
                  sc7().text(context, 'Delivery Boy', 'John Doe', 0xff616161),
                  SizedBox(
                    height: 10.0,
                  ),
                  sc7().text(context, 'Delivery Boy number', '+1 650-385-8068',
                      0xff616161),
                  SizedBox(
                    height: 10.0,
                  ),
                  sc7().text(
                      context,
                      '\nCustomer Address',
                      'Brittany Hall. 55 \nEast10th Street, \nNew York, NY \n10003',
                      0xff616161),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      sc7().text(context, 'Live Track', '', 0xff616161),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Container(
                          height: 29.0,
                          width: 87.0,
                          decoration: BoxDecoration(
                              color: Color(0xffBC1C23),
                              borderRadius: BorderRadius.circular(5.0)),
                          child: Center(
                              child: Text(
                            'TRACK',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 11.0,
                                fontWeight: FontWeight.w900),
                          )),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  sc7().text(
                      context, 'Delivery Fee (based on km)', '\$2', 0xff616161),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Payment method',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.0),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  sc7().text(context, 'Subtotal', '\$29.4', 0xff000000),
                  SizedBox(
                    height: 10.0,
                  ),
                  //sc7().text(context,'','Order Details'),
                  sc7().text(context, 'Delivery', '\$2', 0xff000000),
                  SizedBox(
                    height: 10.0,
                  ),
                  sc7()
                      .text(context, 'Total (incl. VAT)', '\$29.4', 0xff000000),
                  SizedBox(
                    height: 25.0,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    order_tracking()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: button().Button("CANCEL ORDER"),
                      )),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
