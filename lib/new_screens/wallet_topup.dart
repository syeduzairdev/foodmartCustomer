import 'package:flutter/material.dart';
import 'package:untitled3/new_screens/check_out.dart';
import 'package:untitled3/new_screens/payment_method_II.dart';
import 'package:untitled3/widgets/widgets.dart';

class wallet_topup extends StatefulWidget {
  const wallet_topup({Key? key}) : super(key: key);

  @override
  State<wallet_topup> createState() => _wallet_topupState();
}

class _wallet_topupState extends State<wallet_topup> {
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
                            builder: (BuildContext context) => check_out()));
                  },
                  child:
                      card().Card("Esewa", 'assets/ee.png', "Default Payment")),
              SizedBox(
                height: 15,
              ),
              card().Card("Fonepay", 'assets/Rectangle.png', "Not Default"),
              SizedBox(
                height: 15,
              ),
              card().Card("COD", 'assets/cod.png', "Not Default"),
            ],
          ),
        ),
      ),
    );
  }
}
