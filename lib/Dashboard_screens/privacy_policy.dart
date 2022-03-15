import 'package:flutter/material.dart';
import 'package:untitled3/Dashboard_screens/terms_condition.dart';

 class privacy_policy extends StatefulWidget {
   const privacy_policy({Key? key}) : super(key: key);

  @override
  _privacy_policyState createState() => _privacy_policyState();
}

class _privacy_policyState extends State<privacy_policy> {
   @override
   Widget build(BuildContext context) {
     bool agree = false;

     bool _isObscure = true;
     return Scaffold(
       backgroundColor: Colors.white,
       appBar: AppBar(
         leading: IconButton(
             onPressed: () => Navigator.of(context).pop(),
             icon: Icon(
               Icons.arrow_back_ios,
               color: Colors.black,
             )),
         elevation: 0.0,
         backgroundColor: Colors.white,
         centerTitle: true,
         title: Text(
           'Terms & Condition',
           style: TextStyle(color: Colors.black, fontSize: 20),
         ),
       ),
       body: Container(
         padding: EdgeInsets.only(left: 20, right: 20, top: 30),

         child: Column(
           children: [
             Text(
               'Privacy & Policy     ',

               style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
             ),
             SizedBox(height: 20,),
             Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nisi, a, viverra id egestas. Quisque ut orci sodales adipiscing. Et bibendum mauris, vestibulum diam. Donec lacus, eleifend sagittis pellentesque ac consequat, odio viverra. Sit id lectus sit accumsan. Volutpat enim feugiat nis',
               textAlign: TextAlign.start,
               style: TextStyle(
                   color: Color(0xff7E7B7B), fontSize: 15),
             ),

             SizedBox(height: 20,),
             RichText(
                 textAlign: TextAlign.start,
                 text: TextSpan(children: <TextSpan>[
                   TextSpan(
                     text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nisi, a, viverra id egestas. Quisque ut orci sodales adipiscing. Et bibendum mauris, vestibulum diam. Donec lacus, eleifend sagittis pellentesque ac consequat, odio viverra. Sit id lectus sit accumsan. Volutpat enim feugiat nisl faucibus tellus lorem massa. Tristique etiam nam aenean Read Full Terms & Conditions  ",

                     style: TextStyle(color: Color(0xff7E7B7B), fontSize: 15),
                   ),
                   TextSpan(
                     text: "Privacy policy",
                     style: TextStyle(
                       color: Colors.red,
                       fontSize: 15,
                     ),

                   ),
                 ])),
             SizedBox(height: 20,),
             Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Transform.scale(
                     scale: 0.6,
                     child: SizedBox(
                       height: 15.0,
                       width: 25.0,
                       child: Checkbox(
                           focusColor:
                           Color.fromRGBO(252, 186, 24, 1),
                           hoverColor:
                           Color.fromRGBO(252, 186, 24, 1),
                           checkColor:
                           Color.fromRGBO(22, 97, 207, 10),
                           activeColor: Colors.white,
                           value: agree,
                           onChanged: (value) {
                             setState(() {
                               agree = value ?? false;
                             });
                           }),
                     ),
                   ),
                   Text(
                     'I Agree With Terms & Conditions', style: TextStyle(


                       fontSize: 13),)
                 ]),


             SizedBox(height: 20,),
             Container(
               height: 40,
               width: 150,
               child: MaterialButton(
                 shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10)),
                 color: Colors.red,
                 child: Text(
                   'Continue ',


                   style: TextStyle(
                     fontFamily: 'Roboto',
                     color: Colors.white,
                     fontWeight: FontWeight.w400,
                     fontSize: 14,
                   ),
                 ),
                 onPressed: () {

                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => terms_condition()),
                   );
                 },



               ),
             ),
           ],
         ),
       ),
     );
   }
}
