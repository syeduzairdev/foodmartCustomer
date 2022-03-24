import 'package:flutter/material.dart';
import 'package:untitled3/new_screens/payment_detail.dart';
import 'package:untitled3/widgets/widgets.dart';

class payment_metod extends StatefulWidget {
  const payment_metod({Key? key}) : super(key: key);

  @override
  State<payment_metod> createState() => _payment_metodState();
}

class _payment_metodState extends State<payment_metod> {
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
            "Payment Methods",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 18, top: 15),
          child: Column(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                payment_detail()));
                  },
                  child: card()
                      .Card("PayPal", 'assets/paypal.png', "Deafult Payment")),
              Padding(
                padding: const EdgeInsets.only(
                    top: 5, bottom: 5, left: 60, right: 10),
                child: Divider(
                  color: Color(0xff979797),
                ),
              ),
              card().Card("Klarna", 'assets/klarna.png', "Not Deafult"),
              Padding(
                padding: const EdgeInsets.only(
                    top: 5, bottom: 5, left: 60, right: 10),
                child: Divider(
                  color: Color(0xff979797),
                ),
              ),
              card().Card("Visa", 'assets/visa.png', "Not Default")
            ],
          ),
        ));
  }
}
