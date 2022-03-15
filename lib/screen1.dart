
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/screen2.dart';
import 'package:untitled3/screen3.dart';

class screen1 extends StatefulWidget {
  const screen1({Key? key}) : super(key: key);

  @override
  _screen1State createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC61820),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFC61820),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              screen3()),
                    );

                  },
                  child: Text('SKIP>>',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),),
                ),

              )
            ],

          ),
          SizedBox(height: 2.0)
        ],
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/ASIATO.png'),

            ),

          ),
        ),
      ),
    );
  }
}
