import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/widgets/widgets.dart';


class screen extends StatefulWidget {

  @override
  _screenState createState() => _screenState();
}

class _screenState extends State<screen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: GridView.builder(
            itemCount:10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: (2 / 3.5),
            ),
            itemBuilder: (context,index,) {
              return Container(



                child: Column(

                  children: [
                   grid().grid1(context),
                  ],
                ),
              );
            },
          ),
        )
    );
  }
}