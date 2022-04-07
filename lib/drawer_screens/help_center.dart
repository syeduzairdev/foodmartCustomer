import 'package:flutter/material.dart';
import 'package:untitled3/orderlisting_today/orderlisting_today.dart';

class help_screen extends StatelessWidget {
  const help_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Help Center',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Help centre the problem, and its solutions',
              style: TextStyle(
                fontSize: 14,
              ),
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
                            'Help centre learn more about the App',
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
                            'Payment Options',
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
                            'Delivery',
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
                            'Get help  with orders',
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
                  'Submit',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
