import 'package:flutter/material.dart';
import 'package:untitled3/drawer_screens/help_center.dart';
import 'package:untitled3/mart/notification.dart';
import 'package:untitled3/new_screens/coins.dart';
import 'package:untitled3/orderlisting_today/orderlisting_today.dart';
import 'package:untitled3/screen3.dart';
import 'package:untitled3/screen4.dart';
import 'package:untitled3/signin_register_screens/sign_in.dart';
import 'package:untitled3/widgets/widgets.dart';

class drawer extends StatelessWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 70,
                color: Color(0xffFA701B),
                child: Row(
                  children: [
                    Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset('assets/vector1.png',
                            color: Color(0xffFA701B))),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'My Account',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                decoration: new BoxDecoration(
                  border: Border.fromBorderSide(
                      BorderSide(color: Color(0xffC9C9C9))),
                  color: Colors.white,
                ),
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => screen4()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.home, color: Colors.black),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Favourite Restaurant',
                            style: TextStyle(
                                fontFamily: 'Roboto', color: Colors.black),
                          ),
                        ],
                      ),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => orderlisting_today()),
                    );
                  },
                  child: coupon().drawerwidget(
                      Icons.account_balance_wallet_rounded,
                      'My Orders',
                      context,
                      null)),
              coupon().drawerwidget(
                  Icons.chrome_reader_mode, 'Coupon Box ', context, () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => coins()),
                );
              }),
              SizedBox(
                height: 20,
              ),
              coupon().drawerwidget(Icons.account_balance_wallet_rounded,
                  'My Wallet', context, null),
              coupon().drawerwidget(
                  Icons.notifications, 'Notifications ', context, () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => notification()),
                );
              }),
              coupon()
                  .drawerwidget(Icons.person, 'My Account  ', context, null),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: new BoxDecoration(
                  color: Colors.white,
                ),
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => help_screen()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.help, color: Colors.black),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Help',
                                style: TextStyle(
                                    fontFamily: 'Roboto', color: Colors.black),
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    )),
              ),
              coupon().drawerwidget(Icons.logout, 'logout', context, () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => login_screen()),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
