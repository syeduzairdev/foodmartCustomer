import 'package:flutter/material.dart';
import 'package:untitled3/Dashboard_screens/order_details.dart';
import 'package:untitled3/drawer_screens/faq_screen.dart';
import 'package:untitled3/screen3.dart';
import 'package:untitled3/screen4.dart';
import 'package:untitled3/screen9.dart';
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 70,
                color: Color(0xffBC1C23),
                child: Row(
                  children: [
                    Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset('assets/vector1.png')),
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
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => order_details()),
                    );
                  },
                  child: coupon().drawerwidget(
                      Icons.account_balance_wallet_rounded,
                      'My Orders',
                      context,
                      null)),
              coupon().drawerwidget(
                Icons.chrome_reader_mode,
                'Coupon Box ',
                context,
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => screen9()),
                  );
                },
              ),
              coupon().drawerwidget(Icons.account_balance_wallet_rounded,
                  'My Wallet', context, null),
              coupon().drawerwidget(
                  Icons.restaurant_menu, 'My Taste', context, null),
              coupon().drawerwidget(
                  Icons.notifications, 'Notifications ', context, null),
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
                        MaterialPageRoute(builder: (context) => faq_screen()),
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
              coupon().drawerwidget(Icons.logout, 'logout', context, null),
            ],
          ),
        ),
      ),
    );
  }
}
