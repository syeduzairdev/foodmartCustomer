import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class payment_method_screen extends StatefulWidget {
  const payment_method_screen({Key? key}) : super(key: key);

  @override
  _payment_method_screenState createState() => _payment_method_screenState();
}

class _payment_method_screenState extends State<payment_method_screen> {
  @override
  Widget build(BuildContext context) {
    int _radioValue = 0;

    void _handleRadioValueChange(int? value) {
      setState(() {
        _radioValue = value!;

        switch (_radioValue) {
          case 0:
            break;
          case 1:
            break;
          case 2:
            break;
        }
      });
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
         leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Payment method',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Payment method',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            Text(
              'Please Select your Payment Gateway',
              style: TextStyle(color: Color(0xff868686), fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(child: Image.asset('assets/paypal 1.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '********123',
                        style:
                            TextStyle(color: Color(0xff868686), fontSize: 15),
                      ),
                    ],
                  ),
                  new Radio(
                    activeColor: Colors.red,
                    value: 0,
                    groupValue: _radioValue,
                    onChanged: _handleRadioValueChange,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          child: Image.asset('assets/cash_on_delivery.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '********123',
                        style:
                            TextStyle(color: Color(0xff868686), fontSize: 15),
                      ),
                    ],
                  ),
                  new Radio(
                    activeColor: Colors.red,
                    value: 0,
                    groupValue: _radioValue,
                    onChanged: _handleRadioValueChange,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      child: Center(
                          child: Text(
                    'Credit or Debit Card',
                    style: TextStyle(fontSize: 12),
                  ))),
                  Text(
                    'Add+   ',
                    style: TextStyle(
                      color: Color(0xffBC1C23),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
