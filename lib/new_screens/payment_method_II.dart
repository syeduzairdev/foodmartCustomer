import 'package:flutter/material.dart';
import 'package:untitled3/new_screens/search.dart';
import 'package:untitled3/widgets/widgets.dart';

class payment_method_II extends StatefulWidget {
  const payment_method_II({Key? key}) : super(key: key);

  @override
  State<payment_method_II> createState() => _payment_method_IIState();
}

class _payment_method_IIState extends State<payment_method_II> {
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
          "Wallet Top up",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Deposit Amount (\$)",
                style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color(0xffA9A1A1),
                    fontSize: 12),
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
                    labelText: 'Enter Amount',
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
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => search()));
                  },
                  child: card()
                      .Card("Paypal", 'assets/paypal.png', "Default Payment")),
              SizedBox(
                height: 15,
              ),
              card()
                  .Card("Master Card", 'assets/mastercard.png', "Not Default"),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
