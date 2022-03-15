



import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/widgets/dialog_widgets_.dart';

class widgets{
Widget button(BuildContext context,Width,colr,teext,fontize){
  return Container(
    decoration: BoxDecoration(color: Color(colr),borderRadius: BorderRadius.circular(10.0)),
    height: 39,
    width: Width,
    //color: Color(colr),
    child: Center(
      child: Text(teext,
      style:TextStyle(fontSize: fontize,color: Colors.white,fontWeight: FontWeight.bold),),
    ),

  );
}
Widget Stories(img,txt){
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Column(
      children: [
        Container(
          height: 49,
          width: 49,
          decoration: BoxDecoration(
            image:DecorationImage(
              image: AssetImage(img),
            )
          )
        ),
        SizedBox(height: 8.0,),
        Text(txt,
            style: TextStyle(fontSize: 12.0,
            ),),

      ],
    ),
  );
}}
class grid{
  Widget grid1(BuildContext context){
    return Container(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0,top: 20.0,right: 20.0),
            child: Container(
              height: 220,
              width: 170,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bg1.png'),
                ),

              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 150.0,left: 16.0),
                    child: Row(
                      children: [
                        Container(
                          height: 20.0,
                          width: 20.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/fast-delivery.png'),),),),
                        Text('25 min',style: TextStyle(color: Colors.white),)
                      ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0,left: 16.0),
                    child: Row(
                      children: [
                        Container(height: 20.0,
                          width: 20.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/delivery.png'),),),),
                        Text('Free',style: TextStyle(color: Colors.white),),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Container(
                            height: 20,
                            width: 36,
                            decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.all(Radius.circular(5.0),),),
                            child: Center(child: Text('4.5',style: TextStyle(fontWeight: FontWeight.bold),)),),
                        )
                      ],),
                  ),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text("McDonald's",style: TextStyle(fontSize: 20.0),),

          ),
          SizedBox(height: 10,),
          Container(
            //width: MediaQuery.of(context).size.width,
            child: Row(
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text('Chineese ',style: TextStyle(color: Color(0XFF868686),fontSize: 16.0 ),),
                ),

                Icon(
                  Icons.fiber_manual_record,
                  size: 8,
                  color: Color(0XFF868686),
                ),

                Text(' American',style: TextStyle(color: Color(0XFF868686),fontSize: 16.0 ),),
              ],
            ),
          )

        ],
      ),
    );
  }
}
class slidable{
  Widget slidables(){
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 8.0),
      child: Container(
        height: 102,
        //width: MediaQuery.of(context).size.width * 0.9,
        child: Row(
          children: [
            Container(
              height: 80,
              width: 79,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/11.png'),
                      alignment: Alignment.centerLeft)),
            ),
            Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 17,
                  width: 230,
                  child: ListTile(
                    title: Text(
                      'Pan Cakes',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    subtitle: Text('Pista House, Kukatpally'),
                    trailing: Icon(
                      Icons.favorite_border,
                      color: Color(0XFFBC1C23),
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(top: 12.0),
                //   child: Row(
                //     //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Text(
                //         'Pan Cakes',
                //         style: TextStyle(
                //             fontWeight: FontWeight.bold, fontSize: 18),
                //       ),

                //       Icon(
                //         Icons.favorite_border,
                //         color: Color(0XFFBC1C23),
                //       ),
                //     ],
                //   ),
                // ),
                // SizedBox(
                //   height: 10.0,
                // ),
                // Text(
                //   'Pista House, Kukatpally',
                //   style: TextStyle(
                //       color: Color(0XFF616161), fontSize: 12.0),
                // ),
                // // Divider(
                // //   color: Colors.black,
                // //   height: 2,
                // //   thickness: 10.0,
                // // ),
                SizedBox(
                  height: 35.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    '____________________',
                    style: TextStyle(color: Color(0XFF616161)),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    '\$ 15.20',
                    style:
                    TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
class sc7{
  Widget text(BuildContext context,text1,text2,colr){
    return Container(
      // width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text1,style: TextStyle(fontSize: 15.0,color: Color(colr)),),
                Text(text2,style: TextStyle(fontSize: 15.0),),
              ],
            ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text('Your order name',style: TextStyle(fontSize: 15.0,color: Color(0xFF616161)),),
          //     Text('Order Details',style: TextStyle(fontSize: 15.0),),
          //   ],
          // ),
        ],
      ),
    );
  }
}

class coupon{
  Widget coupon1(BuildContext context,ontap){
    return Column(

      children: [
        Center(
          child: Container(
              height: 147,
              width: MediaQuery.of(context).size.width*0.8,

              decoration: DottedDecoration(borderRadius: BorderRadius.circular(20.0),
                color: Color(0XFFBC1C23),
                shape: Shape.box,
                strokeWidth: 3.0,
              ),
              child: Column(
                children: [
                  SizedBox(height: 15.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Container(
                        height: 46.0,
                        width: 46.0,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/coupon.png'))),
                      ),
                      Text('Gift Coupon valued at \$50 or 10% \noff at  Asia To Me',style: TextStyle(fontSize: 13.0,fontWeight: FontWeight.w500),)
                    ],
                  ),
                  SizedBox(height: 12.0,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                    child: Divider(thickness: 2.0,),
                  ),
                  SizedBox(height: 5.0,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Expires',style: TextStyle(fontSize: 13.0,color: Color(0xffA49A9A)),),
                            Text('04 jan 2022',style: TextStyle(fontSize: 13.0,color: Colors.black),),
                          ],
                        ),
                        InkWell(
                          onTap: ontap,
                          child: Container(
                            height: 32,
                            width: 97,
                            decoration: BoxDecoration(color: Color(0xffA44145),borderRadius: BorderRadius.circular(40.0)),
                            child: Center(child: Text('I Agree',style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w500,color: Colors.white),),),),
                        ),
                      ],
                    ),
                  ),
                ],
              )
          ),
        )
      ],
    );
  }
  Widget drawerwidget(icon,name,BuildContext context,ontap) {
    return Container(

      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: new BoxDecoration(
        color: Colors.white,

      ),
      child:
      InkWell(
          onTap:  ontap,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                  icon,
                  color: Colors.black
              ),
              SizedBox(width: 5,),
              Text(
               name,
                style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Colors.black
                ),
              ),
            ],
          )),
    );
  }
}

