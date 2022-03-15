import 'package:flutter/material.dart';

class payment_card_screen extends StatelessWidget {
  const payment_card_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,

        centerTitle: true,
        elevation: 0.0,

        title: Text('Payment Methods',
            style: TextStyle(color: Colors.black, fontSize: 22)),
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            trailing: Icon(
              Icons.arrow_forward_ios_outlined ,
              color: Colors.black,
            ),
            title: Text('PayPal',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400)),
            subtitle: Text('Deafult Payment'),
            leading: Image.asset(
              'assets/paypal.png',
              height: 45,
              width: 45,
            ),
          ),
          ListTile(
            trailing: Icon(
              Icons.arrow_forward_ios_outlined ,
              color: Colors.black,
            ),
            title: Text('MasterCard',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400)),
            subtitle: Text('Not Deafult'),
            leading: Image.asset(
              'assets/mastercard.png',
              height: 45,
              width: 45,
            ),
          ),
          ListTile(
            trailing: Icon(
              Icons.arrow_forward_ios_outlined ,
              color: Colors.black,
            ),
            title: Text('Visa',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400)),
            subtitle: Text('Not Deafult'),
            leading: Image.asset(
              'assets/visa.png',
              height: 45,
              width: 45,
            ),
          )
        ],
      ),
    );
  }
}
