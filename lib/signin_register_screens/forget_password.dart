import 'package:flutter/material.dart';
import 'package:untitled3/signin_register_screens/email_sent.dart';
import 'package:untitled3/widgets/button.dart';

class forgot_password_screen extends StatelessWidget {
  const forgot_password_screen({Key? key}) : super(key: key);

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
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Forgot Password ',
                  style: TextStyle(color: Colors.black, fontSize: 34),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Enter your email address and we will ',
                  style: TextStyle(
                      color: Color.fromRGBO(134, 134, 134, 1), fontSize: 16),
                ),
                SizedBox(
                  height: 5,
                ),
                RichText(
                    text: TextSpan(children: <TextSpan>[
                  TextSpan(
                    text: "send you a reset instructions.",
                    style: TextStyle(
                        color: Color.fromRGBO(134, 134, 134, 1), fontSize: 16),
                  ),
                ])),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(251, 251, 251, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  width: 334,
                  height: 54,
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        suffixStyle: TextStyle(color: Colors.grey),
                        prefixStyle: TextStyle(color: Colors.grey),
                        hintText: 'Email Address',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.black.withAlpha(15),
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.black.withAlpha(15),
                            )),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.red)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.red))),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                CustomButton(
                  name: 'Reset password',
                  route: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              reset_email_screen()),
                    );
                  },
                ),
              ]),
        ));
  }
}
