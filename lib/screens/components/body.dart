
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shortly/constants.dart';

import '../skipPage.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            "assets/images/logo.svg"
      ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset("assets/images/illustration.svg"),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 50),
          child: Text(
              "More than just shorter links",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28,), textAlign: TextAlign.center,

          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 35),
          child: Text(
              "Build your brand's recognition and get detailed insights on how your links are performing",
              style: TextStyle(fontWeight: FontWeight.w600,fontSize: 13,), textAlign: TextAlign.center,
          ),
        ),

        Container(
          width: size.width * 0.8 ,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6) ,

            child: FlatButton(
              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 50),
              color: kPrimaryColor,
              onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => Skip1()),
                );
              },
              child: Text(
                  "START",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        
      ],
    );
  }

  }
