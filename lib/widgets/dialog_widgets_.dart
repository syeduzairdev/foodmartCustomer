import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class modal {
  bool valuefirst = false;
  bool valuesecond = false;
  reject_order(BuildContext context) {
    return
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              contentPadding: EdgeInsets.only(top: 0.0, bottom: 10),
              backgroundColor: Color.fromRGBO(242, 242, 242, 1),
              content: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(252, 186, 24, 1),
                      borderRadius: BorderRadius.all(Radius.circular(0)),
                    ),
                    height: 50,
                    child: Center(
                      child: Text(
                        'Specific Reason To Reject Order',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(

                      decoration: InputDecoration(


                      ),
                    ),
                  ),

                  Container(
                    child:
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 30,
                            width: 90,
                            child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6)),
                                color: Color.fromRGBO(252, 186, 24, 1),
                                child: Text(
                                  'Cancel',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Colors.white,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (BuildContext context) =>
                                  //           login_screen()),
                                  // );
                                })),
                        SizedBox(width: 10,),
                        Container(
                            height: 30,
                            width: 90,
                            child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6)),
                                color: Color.fromRGBO(252, 186, 24, 1),
                                child: Text(
                                  'Send',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Colors.white,
                                  ),
                                ),
                                onPressed: () {


                                })),
                      ],
                    ),
                  ),
                ],
              ),
            );
          });
  }

  sucessorder(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            contentPadding: EdgeInsets.only(
                top: 10, bottom: 10, right: 10, left: 10),
            backgroundColor: Color.fromRGBO(242, 242, 242, 1),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(


                  height: 50,
                  child: Center(
                    child: Image.asset('images/sucess.png'),
                  ),
                ),
                Center(child: Text('Congratulation Order Completed.',
                  style: TextStyle(color: Color.fromRGBO(157, 157, 157, 1),
                      fontSize: 12,
                      fontWeight: FontWeight.w700),)),
                Center(child: Text('You have completed Order\n Number ACR14782',
                  style: TextStyle(color: Colors.black, fontSize: 14),)),
              ],
            ),
          );
        });
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            contentPadding: EdgeInsets.only(top: 0.0, bottom: 10),
            backgroundColor: Color.fromRGBO(242, 242, 242, 1),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(

                  height: 80,
                  child: Center(
                    child: Text(
                      'are you sure you want to logout?',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),


                Container(
                  child:
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 30,
                          width: 90,
                          child: MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6)),
                              color: Color.fromRGBO(252, 186, 24, 1),
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (BuildContext context) =>
                                //           login_screen()),
                                // );
                              })),
                      SizedBox(width: 10,),
                      Container(
                          height: 30,
                          width: 90,
                          child: MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6)),
                              color: Color.fromRGBO(252, 186, 24, 1),
                              child: Text(
                                'Logout',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {

                              })),
                    ],
                  ),
                ),
              ],
            ),
          );
        });}

}
