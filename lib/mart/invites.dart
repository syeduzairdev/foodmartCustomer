import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/new_screens/coins.dart';
import 'package:untitled3/widgets/widgets.dart';

class invitess extends StatefulWidget {
  const invitess({Key? key}) : super(key: key);

  @override
  State<invitess> createState() => _invitesState();
}

class _invitesState extends State<invitess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 25,
            right: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  height: 130.0,
                  width: 130.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/cccc.png'),
                          fit: BoxFit.fill)),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => coins()),
                  );
                },
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: 150,
                        decoration: DottedDecoration(
                          color: Color(0XFF9CA3AF),
                          shape: Shape.box,
                          strokeWidth: 3.0,
                        ),
                        child: Center(
                            child: Text(
                          "0375D",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "(tap to share)",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0XFF9CA3AF),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Your invites",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              invites().invite("Alex", "July 25", "10"),
              Divider(
                color: Color(0xffC4C4C4),
              ),
              SizedBox(
                height: 10,
              ),
              invites().invite("Dakota Johnson", "June 2", "20"),
              Divider(
                color: Color(0xffC4C4C4),
              ),
              SizedBox(
                height: 10,
              ),
              invites().invite("Starck", "Feb 26", "10"),
              Divider(
                color: Color(0xffC4C4C4),
              ),
              SizedBox(
                height: 10,
              ),
              invites().invite("Russel Doe", "jan 13", "20"),
              Divider(
                color: Color(0xffC4C4C4),
              ),
              SizedBox(
                height: 10,
              ),
              invites().invite("Elizabeth", "Mar 1", "10"),
              Divider(
                color: Color(0xffC4C4C4),
              ),
              SizedBox(
                height: 10,
              ),
              invites().invite("Tony Joe", "July 25", "20"),
              Divider(
                color: Color(0xffC4C4C4),
              ),
              SizedBox(
                height: 10,
              ),
              invites().invite("John Doe", "jan 13", "10"),
              Divider(
                color: Color(0xffC4C4C4),
              ),
              SizedBox(
                height: 10,
              ),
              invites().invite("Hazelwood", "Feb 26", "20"),
              Divider(
                color: Color(0xffC4C4C4),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
