import 'package:flutter/material.dart';
import 'package:untitled3/signin_register_screens/sign_in.dart';
import 'package:untitled3/signin_register_screens/splash1.dart';
import 'package:untitled3/widgets/button.dart';

class welcome extends StatelessWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 460,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        alignment: Alignment.bottomCenter,
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.white,
                      ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Color(0xffFA701B).withOpacity(0.2),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(260.0),
                              bottomLeft: Radius.circular(260.0),
                            )),
                      ),
                      Container(
                        child: Positioned(
                          top: 190,
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            height: 250.0,
                            width: 250.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/logo.png'),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Welcome',
                  style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'It’s a pleasure to meet you. We are excited that \nyou’re here so let’s get started!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color(
                      0xff3A3A3A,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80.0,
            ),
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 25),
                child: CustomButton(
                  name: 'GET STARTED',
                  route: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => splas1()),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
