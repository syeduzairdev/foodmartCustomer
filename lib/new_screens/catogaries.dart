import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled3/details_screen/product_details_screen.dart';
import 'package:untitled3/screen4.dart';
import 'package:untitled3/screen7.dart';

class categories extends StatelessWidget {
  const categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.search,
                        color: Colors.black.withAlpha(120),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            hintStyle: TextStyle(
                              color: Colors.black.withAlpha(120),
                            ),
                            border: InputBorder.none,
                          ),
                          onChanged: (String keyword) {},
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  child: Text(
                    'Top Categories',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              product_details_screen()),
                    );
                  },
                  child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              childAspectRatio: 4 / 4,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20),
                      itemCount: 8,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext ctx, index) {
                        return Container(
                          height: 180,
                          width: 450,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/product_card_img.png'),
                                  fit: BoxFit.cover)),
                          child: Center(
                            child: Text(
                              'Fast Food',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
