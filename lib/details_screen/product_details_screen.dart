import 'package:flutter/material.dart';
import 'package:untitled3/details_screen/moreinfo_screen.dart';
import 'package:untitled3/details_screen/product_card.dart';
import 'package:untitled3/widgets/app_theme.dart';

class product_details_screen extends StatelessWidget {
  const product_details_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Image.asset(
              'assets/product_cover.png',
              height: 200,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lox Stocks & Badges',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: apptheme().color,
                          size: 11,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '4.5',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '(999+)',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 11,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Image.asset(
                          'assets/Line 20.png',
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Image.asset('assets/bi_basket-fill.png'),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '999+ orders',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push (
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  more_info_screen()),

                        );
                      },
                      child: Text(
                        'More info',
                        style: TextStyle(
                            color: apptheme().color,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.access_alarms,
                      color: apptheme().color,
                      size: 11,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Delivery Time',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 11,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '(Max 20 min)  ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: DefaultTabController(
              length: 3,
              child: new Scaffold(
                appBar: new PreferredSize(
                  preferredSize:
                      Size.fromHeight(MediaQuery.of(context).size.height),
                  child: new Container(
                    height: 50.0,
                    child: new TabBar(
                      unselectedLabelColor: Colors.black,
                      indicatorColor: apptheme().color,
                      onTap: (int) {
                        int++;
                        print(int);
                      },
                      labelColor: apptheme().color,
                      isScrollable: true,
                      tabs: [
                        Tab(
                          text: "Popular",
                        ),
                        Tab(
                          text: "Popular",
                        ),
                        Tab(
                          text: "Popular",
                        ),
                      ],
                    ),
                  ),
                ),
                body: TabBarView(
                  children: [
                    product_card(),
                    product_card(),
                    product_card(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
