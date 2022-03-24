import 'package:flutter/material.dart';
import 'package:path/path.dart';
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
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 28.0, left: 15, right: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                          hintStyle: TextStyle(fontSize: 24),
                          prefixIcon: Icon(Icons.search)),
                    ),
                  ),
                  Text(
                    "Cancel",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "CATEGORIES",
                    style: TextStyle(fontSize: 16, color: Color(0xff010F07)),
                  ),
                  Text(
                    "CLEAR ALL",
                    style: TextStyle(fontSize: 12, color: Color(0xff010F07)),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Search().search(MediaQuery.of(context).size.width * 0.25,
                      Color(0xffF1F1F1), "All", Color(0xff010F07)),
                  Search().search(MediaQuery.of(context).size.width * 0.35,
                      Color(0xffF1F1F1), "Brunch", Color(0xff010F07)),
                  Search().search(MediaQuery.of(context).size.width * 0.25,
                      Color(0xffF1F1F1), "Dinner", Color(0xff010F07))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Search().search(MediaQuery.of(context).size.width * 0.3,
                      Color(0xffBC1C23), "Burger", Colors.white),
                  Search().search(MediaQuery.of(context).size.width * 0.25,
                      Color(0xffF1F1F1), "Chinese", Color(0xff010F07)),
                  Search().search(MediaQuery.of(context).size.width * 0.3,
                      Color(0xffF1F1F1), "Pizza", Color(0xff010F07))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Search().search(MediaQuery.of(context).size.width * 0.3,
                      Color(0xffF1F1F1), "Salad", Color(0xff010F07)),
                  Search().search(MediaQuery.of(context).size.width * 0.3,
                      Color(0xffF1F1F1), "Soup", Color(0xff010F07)),
                  Search().search(MediaQuery.of(context).size.width * 0.3,
                      Color(0xffF1F1F1), "Breakfast", Color(0xff010F07))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
