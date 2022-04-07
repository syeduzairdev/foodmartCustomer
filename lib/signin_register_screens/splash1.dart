import 'package:flutter/material.dart';
import 'package:untitled3/signin_register_screens/sign_in.dart';
import 'package:untitled3/signin_register_screens/splash2.dart';
import 'package:untitled3/widgets/button.dart';

class splas1 extends StatefulWidget {
  const splas1({Key? key}) : super(key: key);

  @override
  State<splas1> createState() => _splas1State();
}

class _splas1State extends State<splas1> {
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
                Padding(
                  padding: const EdgeInsets.only(top: 130),
                  child: Container(
                    height: 270.0,
                    width: 270.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/s1.png'),
                            fit: BoxFit.fill)),
                  ),
                ),
                SizedBox(
                  height: 60.0,
                ),
                Text(
                  'All your favorites',
                  style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Order your favorite food from your favorite\nrestaurant, wherever you are, on demand delivery.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color(
                      0xff868686,
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
                          builder: (BuildContext context) => splash2()),
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
