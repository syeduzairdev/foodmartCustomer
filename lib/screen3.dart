import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/Dashboard_screens/drawer.dart';
import 'package:untitled3/categories/categories.dart';
import 'package:untitled3/details_screen/product_details_screen.dart';
import 'package:untitled3/screen4.dart';
import 'package:untitled3/widgets/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

final List<String> imgList = [
  'assets/bg.png',
  'assets/Rectangle.png',
  'assets/bg.png',
  'assets/bg.png',
];

class screen3 extends StatefulWidget {
  const screen3({Key? key}) : super(key: key);

  @override
  _screen3State createState() => _screen3State();
}

class _screen3State extends State<screen3> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final List<Widget> imageSliders = imgList
      .map((item) => Container(
              child: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              child: Image(
                  image: AssetImage(item),
                  width: 2000,
                  height: 185,
                  fit: BoxFit.cover),
            ),
          )))
      .toList();

  @override
  Widget build(BuildContext context) {
    List a = [
      "assets/Rice.png",
      "assets/Rice.png",
      "assets/Noodles.png",
      "assets/Rice.png",
      "assets/Noodles.png",
      "assets/Rice.png",
      "assets/Noodles.png",
      "assets/Rice.png",
    ];
    List b = [
      "Rice",
      "Noodles",
      "Snacks",
      "Healthy",
      "Fast Food",
      "Drink",
      "Snacks",
      "Sea Food",
    ];
    List items = [
      "assets/bg.png",
      "assets/bg.png",
      "assets/bg.png",
      "assets/bg.png",
      "assets/bg.png",
      "assets/bg.png",
      "assets/bg.png",
      "assets/bg.png",
    ];

    List<String> imageList = [
      'https://cdn.pixabay.com/photo/2019/03/15/09/49/girl-4056684_960_720.jpg',
      'https://cdn.pixabay.com/photo/2020/12/15/16/25/clock-5834193__340.jpg',
      'https://cdn.pixabay.com/photo/2020/09/18/19/31/laptop-5582775_960_720.jpg',
      'https://media.istockphoto.com/photos/woman-kayaking-in-fjord-in-norway-picture-id1059380230?b=1&k=6&m=1059380230&s=170667a&w=0&h=kA_A_XrhZJjw2bo5jIJ7089-VktFK0h0I4OWDqaac0c=',
      'https://cdn.pixabay.com/photo/2019/11/05/00/53/cellular-4602489_960_720.jpg',
      'https://cdn.pixabay.com/photo/2017/02/12/10/29/christmas-2059698_960_720.jpg',
      'https://cdn.pixabay.com/photo/2020/01/29/17/09/snowboard-4803050_960_720.jpg',
      'https://cdn.pixabay.com/photo/2020/02/06/20/01/university-library-4825366_960_720.jpg',
      'https://cdn.pixabay.com/photo/2020/11/22/17/28/cat-5767334_960_720.jpg',
      'https://cdn.pixabay.com/photo/2020/12/13/16/22/snow-5828736_960_720.jpg',
      'https://cdn.pixabay.com/photo/2020/12/09/09/27/women-5816861_960_720.jpg',
    ];
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            Icon(
              Icons.room,
              color: Color(0xFFC61820),
            ),
            Text(
              '17230 NE Sacramento Street',
              style: TextStyle(color: Colors.grey, fontSize: 14.0),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: GestureDetector(
              onTap: () => _scaffoldKey.currentState!.openEndDrawer(),
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      endDrawer: Drawer(
        elevation: 16.0,
        child: drawer(),
      ),
      body: SingleChildScrollView(
        child: Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 18.0, right: 18.0, bottom: 20.0, top: 15.0),
              child: Container(
                  height: 40,
                  child: TextField(
                    decoration: new InputDecoration(
                      hintText: 'Search food nearby',
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 50.0, right: 20.0),
                        child: Icon(
                          Icons.search,
                          color: Color(0xFF4F4F4F),
                        ),
                      ),
                      hintStyle: TextStyle(
                          color: Colors.black38,
                          fontSize: 16.0,
                          fontFamily: 'Roboto'),
                      filled: true,
                      fillColor: Color(0xFFF3F3F3),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        borderSide:
                            BorderSide(color: Color(0xFFF3F3F3), width: 0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        borderSide:
                            BorderSide(color: Color(0xFFF3F3F3), width: 0),
                      ),
                    ),
                  )),
            ),
            Container(
                child: Column(
              children: [
                Column(children: [
                  CarouselSlider(
                    items: imageSliders,
                    carouselController: _controller,
                    options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 2.0,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        }),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imgList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          width: 12.0,
                          height: 8.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : Color(0xFFBC1C23))
                                  .withOpacity(
                                      _current == entry.key ? 0.8 : 0.1)),
                        ),
                      );
                    }).toList(),
                  ),
                ]),
              ],
            )),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Categories',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => search_screen()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12),
                child: Container(
                  height: 160,
                  child: GridView.count(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: false,
                    crossAxisCount: 4,
                    children: List<Widget>.generate(8, (index) {
                      return Align(
                        // alignment: Alignment.topLeft,
                        child: Container(
                          child: Padding(
                            padding: EdgeInsets.only(left: 5.0, top: 5.0),
                            child: Text(
                              b[index],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: AssetImage(a[index]),
                                  fit: BoxFit.fill)),
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 15),
              child: Text(
                'Stories',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  widgets().Stories("assets/Ellipse.png", 'Food'),
                  widgets().Stories("assets/Ellipse2.png", 'Drink'),
                  widgets().Stories("assets/Ellipse.png", 'Cake'),
                  widgets().Stories("assets/Ellipse2.png", 'Fast Food'),
                  widgets().Stories("assets/Ellipse.png", 'Food'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 12.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => screen4()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'National Favoirites',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Text(
                        'See all',
                        style: TextStyle(fontSize: 16.0, color: Colors.red),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: StaggeredGridView.countBuilder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  itemCount: imageList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    product_details_screen()),
                          );
                        },
                        child: grid().grid1(context));
                  },
                  staggeredTileBuilder: (index) {
                    return StaggeredTile.count(1, index.isEven ? 1.7 : 1.8);
                  }),
            ),
          ]),
        ),
      ),
    );
  }
}
