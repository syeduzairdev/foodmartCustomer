import 'package:flutter/material.dart';
import 'package:untitled3/mart/mycart.dart';

class zinger extends StatefulWidget {
  const zinger({Key? key}) : super(key: key);

  @override
  State<zinger> createState() => _zingerState();
}

class _zingerState extends State<zinger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: new BorderRadius.vertical(
                        bottom: new Radius.elliptical(
                            MediaQuery.of(context).size.width, 100.0)),
                    image:
                        DecorationImage(image: AssetImage("assets/bar.png"))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 38.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Mighty Zinger Burger",
                          style: TextStyle(
                              fontSize: 23,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "From \$ 10.00",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "2 whole muscle zingers with KFC’s spicy mayo, cheese\nand fresh lettuce, all bundled in a Mighty bun.",
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xff9B9B9B),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xffDBDBDB),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Extra Cheese For 1st Burger",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Color(0xffEFEFEF),
                              borderRadius: BorderRadius.circular(11)),
                          child: Center(
                            child: Text(
                              "Optional",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Select one",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xffA1A1A1),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xffFA701B)),
                                  shape: BoxShape.circle),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              "Cheese",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xffA1A1A1),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text(
                          "+ Rs. 40,00",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Add Ons",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Color(0xffEFEFEF),
                              borderRadius: BorderRadius.circular(11)),
                          child: Center(
                            child: Text(
                              "Optional",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Select up to 4",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xffA1A1A1),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffFA701B)),
                              ),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              "Chicken Piece",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xffA1A1A1),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text(
                          "+ Rs.200.00",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Special instructions",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Please let us know if you are allergic to anything or if we need to avoid anything",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xffA1A1A1),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffBEBAB8)),
                      ),
                      child: TextField(
                        textInputAction: TextInputAction.newline,
                        decoration: InputDecoration(
                            hintText: "eg mayo",
                            contentPadding: EdgeInsets.all(8)),
                        keyboardType: TextInputType.multiline,
                        minLines: 6,
                        maxLines: 6,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                color: Color(0xffE2E2E2),
                                shape: BoxShape.circle),
                            child: Center(
                                child: Icon(
                              (Icons.add),
                              color: Colors.black,
                            ))),
                        Text(
                          "1",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                color: Color(0xffFA701B),
                                shape: BoxShape.circle),
                            child: Center(
                                child: Icon(
                              (Icons.remove_outlined),
                              color: Colors.white,
                            ))),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        mycart()));
                          },
                          child: Container(
                            height: 60,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Color(0xffFA701B),
                                borderRadius: BorderRadius.circular(11)),
                            child: Center(
                              child: Text(
                                "Add to cart",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
