import 'package:flutter/material.dart';
import 'package:untitled3/widgets/widgets.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.close,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Find restaurants near you",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                )),
            SizedBox(
              height: 10,
            ),
            Text(
                "Please enter your location or allow access to\nyour location to find restaurants near you.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff868686),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: new BoxDecoration(
                color: Color.fromRGBO(242, 242, 242, 1),
                borderRadius: BorderRadius.circular(10),
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
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color(0xff868686),
                                size: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'System Related Question ',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                color: Color(0xff868686),
                                shape: BoxShape.circle),
                            child: Icon(
                              Icons.close,
                              color: Colors.black,
                              size: 15,
                            ),
                          )
                        ],
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            searchh().Searchh(
              Icons.location_on,
              'St Georgese Terrace, Perth',
              'System Related Question',
            ),
            Padding(
              padding: const EdgeInsets.only(left: 31),
              child: Divider(
                color: Color.fromRGBO(242, 242, 242, 1),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            searchh().Searchh(
              Icons.location_on,
              'Murray street, Perth',
              'Western Australia',
            ),
            Padding(
              padding: const EdgeInsets.only(left: 31),
              child: Divider(
                color: Color.fromRGBO(242, 242, 242, 1),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            searchh().Searchh(
              Icons.location_on,
              'Kings Square, Perth',
              'Western Australia',
            ),
            Padding(
              padding: const EdgeInsets.only(left: 31),
              child: Divider(
                color: Color.fromRGBO(242, 242, 242, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
