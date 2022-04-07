import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled3/signin_register_screens/forget_password.dart';
import 'package:untitled3/widgets/button.dart';

class create_acount_screen extends StatefulWidget {
  const create_acount_screen({Key? key}) : super(key: key);

  @override
  _create_acount_screenState createState() => _create_acount_screenState();
}

class _create_acount_screenState extends State<create_acount_screen> {
  @override
  Widget build(BuildContext context) {
    bool _isObscure = true;

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Sign up',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Create Account',
                    style: TextStyle(color: Colors.black, fontSize: 34),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Enter your Name, Email and Password',
                    style: TextStyle(
                        color: Color.fromRGBO(134, 134, 134, 1), fontSize: 16),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  RichText(
                      text: TextSpan(children: <TextSpan>[
                    TextSpan(
                      text: "for sign up ",
                      style: TextStyle(
                          color: Color.fromRGBO(134, 134, 134, 1),
                          fontSize: 16),
                    ),
                    TextSpan(
                      text: "Already have account? ",
                      style: TextStyle(
                        color: Color(0xffF37720),
                        fontSize: 16,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => login_screen()),
                          // );
                        },
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
                          hintText: 'Full Name',
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
                    height: 10,
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
                    height: 10,
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
                          suffixIcon: IconButton(
                              icon: Icon(_isObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              }),
                          prefixStyle: TextStyle(color: Colors.grey),
                          hintText: 'Password',
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
                              borderSide: BorderSide(
                                color: Color(0xffC61820),
                              )),
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Color(0xffC61820),
                              ))),
                    ),
                  ),
                  SizedBox(
                    height: 10,
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
                          hintText: 'Refer a Freind, Get \$10',
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
                    height: 10,
                  ),
                  CustomButton(
                    name: 'Sign up',
                    route: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                forgot_password_screen()),
                      );
                    },
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                      child: Text(
                    'By Signing up you agree to our Terms ',
                    style: TextStyle(
                        color: Color.fromRGBO(134, 134, 134, 1), fontSize: 16),
                  )),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                      child: Text(
                    'Conditions & Privacy Policy.',
                    style: TextStyle(
                        color: Color.fromRGBO(134, 134, 134, 1), fontSize: 16),
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                      child: Text(
                    ' or',
                    style: TextStyle(
                        color: Color.fromRGBO(134, 134, 134, 1), fontSize: 16),
                  )),
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(57, 89, 152, 1),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Container(
                        child: ListTile(
                          title: Text(
                            'Connects with Facebook',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Colors.white,
                            ),
                          ),
                          leading: Icon(
                            Icons.facebook,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(66, 133, 244, 1),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Container(
                        child: ListTile(
                          title: Text(
                            'Connects with Goggle',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Colors.white,
                            ),
                          ),
                          leading: Icon(
                            FontAwesomeIcons.google,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ));
  }
}
