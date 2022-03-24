import 'package:flutter/material.dart';
import 'package:untitled3/new_screens/wallet_topup.dart';
import 'package:untitled3/widgets/widgets.dart';

class coins extends StatefulWidget {
  const coins({Key? key}) : super(key: key);

  @override
  State<coins> createState() => _coinsState();
}

class _coinsState extends State<coins> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/noti.png")),
            ),
          ),
        ],
        title: Text(
          "My Coins",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Guaranteed  referred are waiting! scratch\nto reveal",
                style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color(0xffA9A1A1),
                    fontSize: 16),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Claim  your Prize Now",
                style: TextStyle(
                    fontFamily: 'Roboto', color: Colors.black, fontSize: 16),
              ),
              SizedBox(
                height: 18,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => wallet_topup()),
                  );
                },
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xffBC1C23)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: Icon(Icons.star_outlined,
                              color: Color(0xffBC1C23)),
                        ),
                        Text(
                          "Deposit",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Coins().Coin(context, Color(0xffBC1C23)),
                  Coins().Coin(context, Color(0xffF6F6F6)),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Coins().Coin(context, Color(0xffF6F6F6)),
                  Coins().Coin(context, Color(0xffF6F6F6)),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Coins().Coin(context, Color(0xffF6F6F6)),
                  Coins().Coin(context, Color(0xffF6F6F6)),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
