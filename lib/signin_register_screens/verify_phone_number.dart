import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:untitled3/signin_register_screens/check.dart';
import 'package:untitled3/signin_register_screens/sign_in.dart';
import 'package:untitled3/widgets/button.dart';

import 'forget_password.dart';

class otp_screen extends StatelessWidget {
  const otp_screen({Key? key}) : super(key: key);

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
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                    child: Text(
                  'Verify phone number',
                  style: TextStyle(color: Colors.black, fontSize: 24),
                )),
                Center(
                    child: Text(
                  'Enter the 4-Digit code sent  ',
                  style: TextStyle(
                      color: Color.fromRGBO(134, 134, 134, 1), fontSize: 16),
                )),
                Center(
                    child: Text(
                  'to you at +1501333982 ',
                  style: TextStyle(
                      color: Color.fromRGBO(134, 134, 134, 1), fontSize: 16),
                )),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: PinCodeTextField(
                    // controller:otpfield123  ,
                    length: 4,
                    obscureText: false,
                    animationType: AnimationType.fade,

                    pinTheme: PinTheme(
                      activeColor: Color(0xff868686),
                      inactiveColor: Color(0xff868686),
                      selectedColor: Color(0xff868686),
                      disabledColor: Color(0xff868686),
                      selectedFillColor: Color(0xff868686),
                      shape: PinCodeFieldShape.underline,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 40,
                      activeFillColor: Colors.white,
                    ),
                    animationDuration: Duration(milliseconds: 300),
                    enableActiveFill: false,

                    // onCompleted: (v) {
                    //   print("Completed");
                    //   value=v;
                    // },
                    // onChanged: (value) {
                    //   print(value);
                    //   setState(() {
                    //     currenttext = value;
                    //   });
                    // },
                    beforeTextPaste: (text) {
                      print("Allowing to paste $text");

                      return true;
                    },
                    appContext: context,
                    onChanged: (String value) {},
                  ),
                ),
                Center(
                  child: CustomButton(
                    name: 'Continue',
                    route: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => check()),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                RichText(
                    text: TextSpan(children: <TextSpan>[
                  TextSpan(
                    text: "Didn’t receive code? ",
                    style: TextStyle(color: Colors.black, fontSize: 10),
                  ),
                  TextSpan(
                    text: "Resend Again.",
                    style: TextStyle(color: Color(0xffF37720), fontSize: 12),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                ])),
                SizedBox(
                  height: 10,
                ),
                Center(
                    child: Text(
                  'By Signing up you agree to our ',
                  style: TextStyle(
                      color: Color.fromRGBO(134, 134, 134, 1), fontSize: 16),
                )),
                Center(
                    child: Text(
                  'Terms Conditions & Privacy Policy.',
                  style: TextStyle(
                      color: Color.fromRGBO(134, 134, 134, 1), fontSize: 16),
                )),
              ],
            ),
          ),
        ));
  }
}
