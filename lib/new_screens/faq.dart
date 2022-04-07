import 'package:flutter/material.dart';
import 'package:untitled3/new_screens/delivery_time.dart';
import 'package:untitled3/new_screens/order_tracking.dart';

class faq_screen extends StatelessWidget {
  const faq_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          'FAQ',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Frequently Asked Questions:  ',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: new BoxDecoration(
                color: Color.fromRGBO(242, 242, 242, 1),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Color.fromRGBO(242, 242, 242, 1),
                ),
              ),
              child: InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Payment options',
                            style: TextStyle(),
                          ),
                          Icon(Icons.arrow_drop_down_outlined)
                        ],
                      ),
                      Center(
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nisl in mattis tempus in id. Sed amet mattis est pharetra, fringilla. Eros ultrices id morbi lobortis vulputate. Eu quis facilisis id arcu facilisis augue venenatis risus a.',
                          style: TextStyle(color: Color(0xff9C9A9A)),
                        ),
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: new BoxDecoration(
                color: Color.fromRGBO(242, 242, 242, 1),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Color.fromRGBO(242, 242, 242, 1),
                ),
              ),
              child: InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Delivery & Pickup',
                            style: TextStyle(),
                          ),
                          Icon(Icons.arrow_drop_down_outlined)
                        ],
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: new BoxDecoration(
                color: Color.fromRGBO(242, 242, 242, 1),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Color.fromRGBO(242, 242, 242, 1),
                ),
              ),
              child: InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Get help with order',
                            style: TextStyle(),
                          ),
                          Icon(Icons.arrow_drop_down_outlined)
                        ],
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: new BoxDecoration(
                color: Color.fromRGBO(242, 242, 242, 1),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Color.fromRGBO(242, 242, 242, 1),
                ),
              ),
              child: InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'System Related Question  ',
                            style: TextStyle(),
                          ),
                          Icon(Icons.arrow_drop_down_outlined)
                        ],
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 55,
              width: double.infinity,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Color(0xffF37720),
                child: Text(
                  'Submit your Question',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => deliverytime()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
