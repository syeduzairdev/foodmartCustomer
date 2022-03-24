import 'package:flutter/material.dart';
import 'package:untitled3/new_screens/check_out.dart';
import 'package:untitled3/widgets/button.dart';

class place_order extends StatefulWidget {
  const place_order({Key? key}) : super(key: key);

  @override
  State<place_order> createState() => _place_orderState();
}

class _place_orderState extends State<place_order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/bar.png'), fit: BoxFit.fill)),
            ),
            Container(
                child: Padding(
              padding: const EdgeInsets.only(left: 22, right: 18, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Chicken Burger",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 23,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "From \$ 3.95.00",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                      ]),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "2 pieces hot and crispy chicken, dinner roll, fries\nand dip sauce",
                    style: TextStyle(color: Color(0xff727171), fontSize: 13),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Divider(
                    color: Color(0xffD3D3D3),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Text(
                    "Special Instructions",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Please let us know if you are allergic to anything\nor if we need to avoid anything",
                    style: TextStyle(color: Color(0xff727171), fontSize: 15),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Color(0xffC4C4C4))),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(8),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: "e.g. no mayo",
                        ),
                      )),
                  SizedBox(
                    height: 78,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => check_out()),
                        );
                      },
                      child: button().Button("PLACE ORDER")),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
