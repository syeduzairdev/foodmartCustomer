import 'package:flutter/material.dart';
import 'package:untitled3/details_screen/product_card.dart';
import 'package:untitled3/details_screen/rating_screen.dart';
import 'package:untitled3/widgets/app_theme.dart';

class more_info_screen extends StatelessWidget {
  const more_info_screen({Key? key}) : super(key: key);

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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.star,
                      color: apptheme().color,
                      size: 13,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '4.5',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '14630 People Rated ',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.add_location,
                      color: apptheme().color,
                      size: 13,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      child: Text(
                        'D-10 Block-D, North nazimabad, KDA\n Scheme No. 2, Karachi  ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.access_alarm,
                      color: apptheme().color,
                      size: 13,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Opening times',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '12:00 - 23:59d ',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: DefaultTabController(
              length: 2,
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
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("ABOUT"),
                          ),
                        ),
                        Tab(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("RATINGS"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                body: TabBarView(
                  children: [
                    Image.asset('assets/MAp.png'),
                    ratings_screen(),
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
