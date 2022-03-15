import 'package:flutter/material.dart';
import 'package:untitled3/widgets/app_theme.dart';

class ratings_screen extends StatelessWidget {
  const ratings_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '50 Ratings',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              for (var i = 0; i < 5; i++)   Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Alex ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Dec 20, 2021 ',

                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                       Row(
                         children: [
                           Icon(
                             Icons.star,
                             color: apptheme().color,
                             size: 13,
                           ),
                           Icon(
                             Icons.star,
                             color: apptheme().color,
                             size: 13,
                           ), Icon(
                             Icons.star,
                             color: apptheme().color,
                             size: 13,
                           ), Icon(
                             Icons.star,
                             color: apptheme().color,
                             size: 13,
                           ),

                         ],
                       )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'Best',

                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),

                    Divider(),
                  ],
                ),
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
