import 'package:flutter/material.dart';
import 'package:untitled3/new_screens/payment_metod.dart';
import 'package:untitled3/widgets/button.dart';

class check_out extends StatefulWidget {
  const check_out({Key? key}) : super(key: key);

  @override
  State<check_out> createState() => _check_outState();
}

class _check_outState extends State<check_out> {
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
          "Check out",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Color(0xffBC1C23),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Deleivery Address",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  Icon(
                    Icons.edit,
                    color: Color(0xffBC1C23),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Plot 3 4 5 New TPX Are Mai Kolachi Bypass, Intelligence\nColony, Karachi, Karachi City, Sindh",
                style: TextStyle(color: Color(0xff727171), fontSize: 13),
              ),
              SizedBox(
                height: 9,
              ),
              Divider(
                color: Color(0xffD3D3D3),
              ),
              SizedBox(
                height: 9,
              ),
              Text(
                "Order details",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your order name",
                    style: TextStyle(color: Color(0xff616161), fontSize: 15),
                  ),
                  Text(
                    "Sea Food",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 7,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Quantity",
                    style: TextStyle(color: Color(0xff616161), fontSize: 15),
                  ),
                  Text(
                    "1",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 7,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Price",
                    style: TextStyle(color: Color(0xff616161), fontSize: 15),
                  ),
                  Text(
                    "\$234,45",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 17,
                                width: 17,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/payment.png'),
                                        fit: BoxFit.fill)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Payment Method",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          Icon(
                            Icons.edit,
                            color: Color(0xffBC1C23),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 17,
                                width: 17,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/cash.png'),
                                        fit: BoxFit.fill)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Cash",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                          Text(
                            "\$435",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 17,
                            width: 17,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/order_sum.png'),
                                    fit: BoxFit.fill)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Order Summary",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "1x Chicken Chips",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                          Text(
                            "\$435",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    height: 17,
                    width: 17,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/promocode.png'),
                            fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Payment Method",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "\$ 435.00",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => payment_metod(),
                        ));
                  },
                  child: button().Button("ADD TO CART")),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
