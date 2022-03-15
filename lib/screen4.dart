import 'package:flutter/material.dart';
import 'package:untitled3/screen5.dart';


class screen4 extends StatefulWidget {
  const screen4({Key? key}) : super(key: key);

  @override
  _screen4State createState() => _screen4State();
}

class _screen4State extends State<screen4> {
  List a = [
    "assets/Rectangle1.png",
    "assets/Rectangle2.png",
    "assets/Rectangle1.png",
    "assets/Rectangle2.png",
    "assets/Rectangle1.png",
    "assets/Rectangle2.png",
  ];
  List b = [
    'Lax stock & Bagel Restaurant',
    'Tasty meavls',
    'Foodies Unites',
    'Foodies Unites',
    'Foodies Unites',
    'Foodies Unites',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Text('Favourite Restaurant',
              style: TextStyle(color: Colors.black,
                  fontSize: 20.0,
              ),

            ),
          ),
        ),

        body: ListView.builder(

          itemBuilder: (BuildContext ctx, int index) {
            return InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          screen5()),
                );

              },
              child: Column(
                children: [
                  SizedBox(height: 20.0,),
                  Image(image: AssetImage(a[index])),
                  SizedBox(height: 10.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text(b[index]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: Icon(Icons.favorite_sharp,
                          color: Colors.red,),
                      )
                    ],
                  )

                ],
              ),
            );
          },
          itemCount: a.length,
        ),

    );
  }
}
