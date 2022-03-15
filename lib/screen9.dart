import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/widgets/dialog_widgets_.dart';
import 'package:untitled3/widgets/widgets.dart';

import 'Dashboard_screens/payment_method_screen.dart';

class screen9 extends StatefulWidget {

  const screen9({Key? key}) : super(key: key);

  @override
  _screen9State createState() => _screen9State();
}

class _screen9State extends State<screen9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.arrow_back_ios_outlined,color: Colors.black,
        ),
        title: Text('Coupon Box',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w600,color: Colors.black),),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for(var i=0;i<=5;i++)
            Column(
              children: [
                coupon().coupon1(context,(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            payment_method_screen()),
                  );
                }),
                SizedBox(height: 15.0,),
              ],
            ),


            // coupon().coupon1(context),
            // SizedBox(height: 15.0,),
            // coupon().coupon1(context),
            // SizedBox(height: 15.0,),
            // coupon().coupon1(context),
            // SizedBox(height: 15.0,),
            // coupon().coupon1(context),
            // SizedBox(height: 15.0,),
            // coupon().coupon1(context),
            // SizedBox(height: 15.0,),
            // coupon().coupon1(context),
            // coupon().coupon1(context),
            // coupon().coupon1(context),
            
          ],
        ),
      )
    );
  }
}
