import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class screen8 extends StatefulWidget {

  const screen8({Key? key}) : super(key: key);

  @override
  _screen8State createState() => _screen8State();
}

class _screen8State extends State<screen8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            leading: Icon(
              Icons.arrow_back_ios_outlined,color: Colors.black,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Container(
                    //height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0),
                      color: Colors.white,
                      boxShadow:[ BoxShadow(color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 3),)]
                    ),
                    child: Icon(
                      Icons.search_rounded,color: Colors.black,
                    ),
                  ),
                ),
              )
            ],

          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
        //   showMaterialModalBottomSheet(
        //   context: context,
        //   builder: (context) => SingleChildScrollView(
        //     controller: ModalScrollController.of(context),
        //     child: Container(),
        //   ),
        // )
          ],
        ),
      ),
    );
  }
}
