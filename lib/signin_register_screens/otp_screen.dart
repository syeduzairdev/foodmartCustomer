import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:untitled3/signin_register_screens/email_sent.dart';
import 'package:untitled3/signin_register_screens/verify_phone_number.dart';
import 'package:untitled3/widgets/button.dart';


class phone_number_screen extends StatelessWidget {
  const phone_number_screen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text('Sign In',style: TextStyle(color: Colors.black),),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),

          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                  child: Text(
                    'Get started with Asiato',
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  )),
              Center(
                  child: Text(
                    'Enter your phone number to use foodly ',
                    style: TextStyle(
                        color: Color.fromRGBO(134, 134, 134, 1), fontSize: 16),
                  )),
              Center(
                  child: Text(
                    'and enjoy your food. ',
                    style: TextStyle(
                        color: Color.fromRGBO(134, 134, 134, 1), fontSize: 16),
                  )),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 334,
                height: 70,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: IntlPhoneField(
                    flagsButtonPadding: EdgeInsets.only(bottom: 5.0),
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),

                    initialCountryCode: 'IN',
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: CustomButton(
                  name: 'Send Again',
                  route: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              otp_screen()),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}