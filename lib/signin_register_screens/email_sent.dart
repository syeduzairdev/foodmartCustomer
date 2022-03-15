
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/payments_screen/empty_payments_screen.dart';
import 'package:untitled3/signin_register_screens/otp_screen.dart';
import 'package:untitled3/signin_register_screens/sign_in.dart';
import 'package:untitled3/widgets/button.dart';



class reset_email_screen extends StatelessWidget {
  const reset_email_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(

          title: Text('Sign In'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,


        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text( 'Reset email sent', style: TextStyle(color: Colors.black, fontSize: 34),),
                SizedBox(height: 10,),
                Text( 'We have sent a instructions email to ', style: TextStyle(color: Color.fromRGBO(134, 134, 134, 1), fontSize: 16),),
                SizedBox(height: 5,),
                RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                        text: " Nawfazim@icloud.com.",


                        style: TextStyle(color: Color.fromRGBO(134, 134, 134, 1), fontSize: 16),
                      ),
                      TextSpan(
                        text: " Having problem? ",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => login_screen()),
                            );
                          },
                      ),
                    ])),
                SizedBox(height: 30,),
                Center(
                  child: CustomButton(
                    name: 'Send Again',
                    route: () {
                      Navigator.push (
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                payments_method_screen()),

                      );
                    },
                  ),
                ),
              ]),
        ));
  }
}
