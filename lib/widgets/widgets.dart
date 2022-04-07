import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/widgets/dialog_widgets_.dart';

class widgets {
  Widget button(BuildContext context, Width, colr, teext, fontize) {
    return Container(
      decoration: BoxDecoration(
          color: Color(colr), borderRadius: BorderRadius.circular(10.0)),
      height: 39,
      width: Width,
      //color: Color(colr),
      child: Center(
        child: Text(
          teext,
          style: TextStyle(
              fontSize: fontize,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget Stories(img, txt) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Container(
              height: 49,
              width: 49,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(img),
              ))),
          SizedBox(
            height: 8.0,
          ),
          Text(
            txt,
            style: TextStyle(
              fontSize: 12.0,
            ),
          ),
        ],
      ),
    );
  }
}

class grid {
  Widget grid1(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 20.0, right: 20.0),
            child: Container(
              height: 220,
              width: 170,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bg1.png'),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 150.0, left: 16.0),
                    child: Row(
                      children: [
                        Container(
                          height: 20.0,
                          width: 20.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/fast-delivery.png'),
                            ),
                          ),
                        ),
                        Text(
                          '25 min',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, left: 16.0),
                    child: Row(
                      children: [
                        Container(
                          height: 20.0,
                          width: 20.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/delivery.png'),
                            ),
                          ),
                        ),
                        Text(
                          'Free',
                          style: TextStyle(color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Container(
                            height: 20,
                            width: 36,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.0),
                              ),
                            ),
                            child: Center(
                                child: Text(
                              '4.5',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              "McDonald's",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            //width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Chineese ',
                    style: TextStyle(color: Color(0XFF868686), fontSize: 16.0),
                  ),
                ),
                Icon(
                  Icons.fiber_manual_record,
                  size: 8,
                  color: Color(0XFF868686),
                ),
                Text(
                  ' American',
                  style: TextStyle(color: Color(0XFF868686), fontSize: 16.0),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class slidable {
  Widget slidables() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Container(
        height: 102,
        //width: MediaQuery.of(context).size.width * 0.9,
        child: Row(
          children: [
            Container(
              height: 80,
              width: 79,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/11.png'),
                      alignment: Alignment.centerLeft)),
            ),
            Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 17,
                  width: 230,
                  child: ListTile(
                    title: Text(
                      'Pan Cakes',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    subtitle: Text('Pista House, Kukatpally'),
                    trailing: Icon(
                      Icons.favorite_border,
                      color: Color(0XFFBC1C23),
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(top: 12.0),
                //   child: Row(
                //     //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Text(
                //         'Pan Cakes',
                //         style: TextStyle(
                //             fontWeight: FontWeight.bold, fontSize: 18),
                //       ),

                //       Icon(
                //         Icons.favorite_border,
                //         color: Color(0XFFBC1C23),
                //       ),
                //     ],
                //   ),
                // ),
                // SizedBox(
                //   height: 10.0,
                // ),
                // Text(
                //   'Pista House, Kukatpally',
                //   style: TextStyle(
                //       color: Color(0XFF616161), fontSize: 12.0),
                // ),
                // // Divider(
                // //   color: Colors.black,
                // //   height: 2,
                // //   thickness: 10.0,
                // // ),
                SizedBox(
                  height: 35.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    '____________________',
                    style: TextStyle(color: Color(0XFF616161)),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    '\$ 15.20',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class sc7 {
  Widget text(BuildContext context, text1, text2, colr) {
    return Container(
      // width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: TextStyle(fontSize: 15.0, color: Color(colr)),
                ),
                Text(
                  text2,
                  style: TextStyle(fontSize: 15.0),
                ),
              ],
            ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text('Your order name',style: TextStyle(fontSize: 15.0,color: Color(0xFF616161)),),
          //     Text('Order Details',style: TextStyle(fontSize: 15.0),),
          //   ],
          // ),
        ],
      ),
    );
  }
}

class coupon {
  Widget coupon1(BuildContext context, ontap) {
    return Column(
      children: [
        Center(
          child: Container(
              height: 147,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: DottedDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Color(0XFFBC1C23),
                shape: Shape.box,
                strokeWidth: 3.0,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 46.0,
                        width: 46.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/coupon.png'))),
                      ),
                      Text(
                        'Gift Coupon valued at \$50 or 10% \noff at  Asia To Me',
                        style: TextStyle(
                            fontSize: 13.0, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Divider(
                      thickness: 2.0,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Expires',
                              style: TextStyle(
                                  fontSize: 13.0, color: Color(0xffA49A9A)),
                            ),
                            Text(
                              '04 jan 2022',
                              style: TextStyle(
                                  fontSize: 13.0, color: Colors.black),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: ontap,
                          child: Container(
                            height: 32,
                            width: 97,
                            decoration: BoxDecoration(
                                color: Color(0xffA44145),
                                borderRadius: BorderRadius.circular(40.0)),
                            child: Center(
                              child: Text(
                                'I Agree',
                                style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        )
      ],
    );
  }

  Widget drawerwidget(icon, name, BuildContext context, ontap) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      decoration: new BoxDecoration(
        border: Border.fromBorderSide(BorderSide(color: Color(0xffC9C9C9))),
        color: Colors.white,
      ),
      child: InkWell(
          onTap: ontap,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(icon, color: Colors.black),
                SizedBox(
                  width: 5,
                ),
                Text(
                  name,
                  style: TextStyle(fontFamily: 'Roboto', color: Colors.black),
                ),
              ],
            ),
          )),
    );
  }
}

class card {
  Widget Card(txta, ast, txtb) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(ast))),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    txta,
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.black,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    txtb,
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Color(0xff727171),
                        fontSize: 14),
                  ),
                ],
              )
            ],
          ),
          Icon(
            Icons.arrow_forward_ios_outlined,
          )
        ],
      ),
    );
  }
}

class Coins {
  Widget Coin(BuildContext context, clr) {
    return Container(
      height: 235,
      width: MediaQuery.of(context).size.width * 0.42,
      decoration:
          BoxDecoration(color: clr, borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 46,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "WIN UP TO",
                    style: TextStyle(color: Color(0xff000000), fontSize: 12),
                  ),
                  Text(
                    "Rs: 100",
                    style: TextStyle(color: Color(0xffF37720), fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
          Image.asset("assets/coina.png"),
          Container(
            height: 46,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        color: Color(0xffF37720), shape: BoxShape.circle),
                    child: Icon(
                      Icons.star_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "450",
                    style: TextStyle(color: Color(0xffF37720), fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Search {
  Widget search(wdt, clr, txt, clr2) {
    return Container(
      width: wdt,
      height: 50,
      decoration:
          BoxDecoration(color: clr, borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: Text(
          txt,
          style: TextStyle(fontSize: 12, color: clr2),
        ),
      ),
    );
  }
}

class msg {
  Widget Msg(BuildContext context, clr, clr2) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.6,
      decoration: BoxDecoration(
          color: clr,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          )),
      child: Center(
          child: Text(
        "This is the message recieved.",
        style: TextStyle(
          color: clr2,
          fontSize: 12,
        ),
      )),
    );
  }
}

class invites {
  Widget invite(txt1, txt2, txt3) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            txt1,
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
          ),
          Row(
            children: [
              Text(
                txt2,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 35,
                width: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xffF37720),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                            ),
                            color: Color(0xffF37720),
                            shape: BoxShape.circle),
                        child: Icon(
                          Icons.attach_money_outlined,
                          size: 12,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        txt3,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class searchh {
  Widget Searchh(icn, txt1, txt2) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        child: Row(
          children: [
            Icon(
              Icons.near_me_outlined,
              color: Color(0xff868686),
              size: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  txt1,
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  txt2,
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xff868686),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class noti {
  Widget Noti(
    clr,
    clr2,
    txt1,
    txt2,
    ast,
  ) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(color: clr, shape: BoxShape.circle),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    txt1,
                    style: TextStyle(
                      fontSize: 18,
                      color: clr2,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    txt2,
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff68717A),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(ast)),
                shape: BoxShape.circle),
          ),
        ],
      ),
    );
  }
}

class Carrt {
  Widget carrt(txt1) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffA1A1A1),
                ),
              ),
              child: Center(
                  child: Text(
                txt1,
                style: TextStyle(color: Color(0xffFA701B)),
              )),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Cookie Sandwich",
                  style: TextStyle(color: Color(0xff000000), fontSize: 18),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Shortbread, chocolate turtle\ncookies, and red velvet.",
                  style: TextStyle(color: Color(0xffA1A1A1), fontSize: 16),
                )
              ],
            )
          ],
        ),
        Text(
          "USD7.4",
          style: TextStyle(color: Color(0xffFA701B), fontSize: 14),
        ),
      ],
    );
  }
}
