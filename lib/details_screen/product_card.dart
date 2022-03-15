import 'package:flutter/material.dart';

class product_card extends StatelessWidget {
  const product_card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Popular',
              style: TextStyle(
                  color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),
            ),
            Text(
              'Most ordered right now.  ',
              style: TextStyle(
                  color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 15,
            ),
            GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 15,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 180,
                    childAspectRatio:5/4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),


                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      padding: EdgeInsets.only(
                          left: 10, right: 15, top: 10, bottom: 10),
                      height: 130,
                      width: 145,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/product_card_img.png'),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Xtream Duo Box ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              width: 70,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(22),
                              ),
                              child: Center(child: Text('\$1,175')),
                            ),
                          ),
                        ],
                      ));
                })
          ]),
        ),
      ),
    );
  }
}
