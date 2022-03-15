import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:untitled3/widgets/widgets.dart';

final List<String> imgList = [

  'assets/sc5.png',
  'assets/sc5.png',
  'assets/sc5.png',
  'assets/sc5.png',
  'assets/sc5.png',
];

class screen6 extends StatefulWidget {


  @override
  _screen6State createState() => _screen6State();
}

class _screen6State extends State<screen6> {
  RangeValues _currentRangeValues = RangeValues(0.0, 60.0);

  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<Widget> imageSliders = imgList.map((item) => Container(
      child: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          child: Image(image: AssetImage(item),width: 2000,height: 185,fit: BoxFit.cover),
        ),
      )))
      .toList();




  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [

              Stack(
                alignment: Alignment.topCenter,
                children: [

                  Container(
                    color: Color(0xFF252525),
                    height: 440,
                    width: MediaQuery.of(context).size.width,),

                  Container(
                    alignment: Alignment.topCenter,
                    height: 206.0,
                    width: MediaQuery.of(context).size.width,
                    child: Builder(
                      builder: (context) {
                        final double height = MediaQuery.of(context).size.height;
                        return CarouselSlider(
                          options: CarouselOptions(
                            height: height,
                            viewportFraction: 1.0,
                            enlargeCenterPage: false,
                            autoPlay: true,
                          ),
                          items: imgList
                              .map((item) => Center(
                            child: Container(
                              alignment: Alignment.topCenter,
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(item),fit: BoxFit.cover,)),
                              height: 206,
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: imgList.asMap().entries.map((entry) {
                                    return GestureDetector(
                                      onTap: () => _controller.animateToPage(entry.key),
                                      child: Container(
                                        width: 8.0,
                                        height: 8.0,
                                        margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 1.0),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: (Theme.of(context).brightness == Brightness.dark
                                                ? Colors.white
                                                : Color(0xFFFA701B))
                                                .withOpacity(_current == entry.key ? 0.9 : 0.3)),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ))
                              .toList(),
                        );
                      },
                    ),
                  ),

                  Positioned(
                    top: 180,
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.8,
                      height: 260.0,
                      //color: Colors.black,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),color: Colors.white,
                          boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5),spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),)]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: Text('Pan Cakes',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                ),
                                Icon(
                                  Icons.favorite_border,color: Colors.red,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text('Pista House, Kukatpally',style: TextStyle(fontSize: 12.0,  color: Color(0XFF8E8D8D)),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 125.0,top: 4.0),
                              child: Divider(
                                thickness: 2.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star_rate,color: Color(0XFFFCBA18),size: 16.0,
                                  ),
                                  Text('  4.5 Ratings',style: TextStyle(color: Color(0XFF8E8D8D),fontSize: 12.0),)
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.schedule,color: Color(0XFF8E8D8D),size: 16.0,
                                  ),
                                  Text('  45 Minutes (Delivery time)',style: TextStyle(color: Color(0XFF8E8D8D),fontSize: 12.0),)
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text('Price Range'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Center(
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [

                                        Expanded(
                                          child: RangeSlider(
                                            activeColor: Colors.red,
                                            values: _currentRangeValues,
                                            min: 0.0,
                                            max: 100.0,
                                            divisions: 1100,
                                            labels: RangeLabels(
                                              _currentRangeValues.start.round().toString(),
                                              _currentRangeValues.end.round().toString(),
                                            ),
                                            onChanged: (RangeValues values) {
                                              setState(() {
                                                _currentRangeValues = values;
                                              });
                                            },
                                          ),
                                        ),

                                      ]
                                  )
                              ),
                            ),
                            Container(
                              height: 36,
                              width: MediaQuery.of(context).size.width,

                              decoration: DottedDecoration(
                                color: Color(0XFFBC1C23),
                                shape: Shape.box,
                                strokeWidth: 2.0,
                              ),
                              child: Center(child: Text('OFFER. 10% off on all Beverages',style: TextStyle(color: Color(0XFFBC1C23),fontSize: 14.0),)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 35.0,
                    left: 30.0,
                    child: Container(
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ),


                ],
              ),
              //Container(height: 100.0,color: Colors.black,),
              Container(
                height: 500,
                color: Color(0xFF252525),
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white30),
                          borderRadius: BorderRadius.circular(15.0),color: Color(0xFF252525),
                          boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.0),spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),)]
                      ),
                      child: Slidable(
                        // Specify a key if the Slidable is dismissible.
                          key: const ValueKey(0),

                          // The start action pane is the one at the left or the top side.
                          startActionPane: ActionPane(
                            // A motion is a widget used to control how the pane animates.
                            motion: const ScrollMotion(),

                            // A pane can dismiss the Slidable.
                            dismissible: DismissiblePane(onDismissed: () {}),

                            // All actions are defined in the children parameter.
                            children: const [
                              // A SlidableAction can have an icon and/or a label.
                              SlidableAction(
                                onPressed: doNothing,
                                backgroundColor: Color(0xFF0392DE),
                                foregroundColor: Colors.white,
                                icon: Icons.check_circle,
                              ),
                            ],
                          ),

                          // The end action pane is the one at the right or the bottom side.
                          endActionPane: const ActionPane(
                            motion: ScrollMotion(),
                            children: [
                              SlidableAction(
                                onPressed: doNothing,
                                backgroundColor: Color(0xFFBC1C23),
                                foregroundColor: Colors.white,
                                icon: Icons.highlight_off,
                              ),
                            ],
                          ),

                          // The child of the Slidable is what the user sees when the
                          // component is not dragged.
                          child:Column(
                            children: [
                              slidable().slidables(),
                            ],
                          )
                      ),
                    ),
                    SizedBox(height: 8.0,),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),color: Colors.white,
                          boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.2),spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),)]
                      ),
                      child: Slidable(
                        // Specify a key if the Slidable is dismissible.
                          key: const ValueKey(0),

                          // The start action pane is the one at the left or the top side.
                          startActionPane: ActionPane(
                            // A motion is a widget used to control how the pane animates.
                            motion: const ScrollMotion(),

                            // A pane can dismiss the Slidable.
                            dismissible: DismissiblePane(onDismissed: () {}),

                            // All actions are defined in the children parameter.
                            children: const [
                              // A SlidableAction can have an icon and/or a label.
                              SlidableAction(
                                onPressed: doNothing,
                                backgroundColor: Color(0xFF0392DE),
                                foregroundColor: Colors.white,
                                icon: Icons.check_circle,
                              ),
                            ],
                          ),

                          // The end action pane is the one at the right or the bottom side.
                          endActionPane: const ActionPane(
                            motion: ScrollMotion(),
                            children: [
                              SlidableAction(
                                onPressed: doNothing,
                                backgroundColor: Color(0xFFBC1C23),
                                foregroundColor: Colors.white,
                                icon: Icons.highlight_off,
                              ),
                            ],
                          ),

                          // The child of the Slidable is what the user sees when the
                          // component is not dragged.
                          child:Column(
                            children: [
                              slidable().slidables(),
                            ],
                          )
                      ),
                    ),
                    SizedBox(height: 8.0,),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),color: Colors.white,
                          boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.2),spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),)]
                      ),
                      child: Slidable(
                        // Specify a key if the Slidable is dismissible.
                          key: const ValueKey(0),

                          // The start action pane is the one at the left or the top side.
                          startActionPane: ActionPane(
                            // A motion is a widget used to control how the pane animates.
                            motion: const ScrollMotion(),

                            // A pane can dismiss the Slidable.
                            dismissible: DismissiblePane(onDismissed: () {}),

                            // All actions are defined in the children parameter.
                            children: const [
                              // A SlidableAction can have an icon and/or a label.
                              SlidableAction(
                                onPressed: doNothing,
                                backgroundColor: Color(0xFF0392DE),
                                foregroundColor: Colors.white,
                                icon: Icons.check_circle,
                              ),
                            ],
                          ),

                          // The end action pane is the one at the right or the bottom side.
                          endActionPane: const ActionPane(
                            motion: ScrollMotion(),
                            children: [
                              SlidableAction(
                                onPressed: doNothing,
                                backgroundColor: Color(0xFFBC1C23),
                                foregroundColor: Colors.white,
                                icon: Icons.highlight_off,
                              ),
                            ],
                          ),

                          // The child of the Slidable is what the user sees when the
                          // component is not dragged.
                          child:Column(
                            children: [
                              slidable().slidables(),
                            ],
                          )
                      ),
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
void doNothing(BuildContext context) {}