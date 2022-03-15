import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled3/payments_screen/payment_card_screen.dart';
import 'package:untitled3/widgets/app_theme.dart';



class payments_method_screen extends StatelessWidget {
  const payments_method_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,

        centerTitle: true,
        elevation: 0.0,

        title: Text('Payment Methods',
            style: TextStyle(color: Colors.black, fontSize: 22)),
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment. stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Center(child: Image.asset( 'assets/Credit card (1).png', )),

          Center(child: Text('Don’t have any card :)',style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),)),
          SizedBox(height: 10,),
          Center(child: Text('It’s seems like you don’t add any credit \n or debit card. You may easily add card.',style: TextStyle(color: Color.fromRGBO(134, 134, 134, 1),fontSize: 16,fontWeight: FontWeight.w400),)),
          SizedBox(height: 10,),
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: apptheme().color,

                ),),
              height: 38,
              width: 255,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),

                child: Text(
                  'Add credit cards',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: apptheme().color,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => payment_card_screen()),
                  );
                },
              ),
            ),
          ),

        ],
      ),
    );
  }
}
