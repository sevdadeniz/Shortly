import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shortly/constants.dart';
import 'package:shortly/screens/components/body_result.dart';
import 'package:email_validator/email_validator.dart';

class BodyLink extends StatelessWidget {
  String link;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset("assets/images/logo.svg"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset("assets/images/illustration.svg"),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
          child: Text(
            "Let's get started",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
          child: Text(
            "Paste your first link into the field to shorten it",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 13,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
            child: Form(
              autovalidateMode: AutovalidateMode.always,
              child: TextFormField(
                onChanged: (value) {
                  link = value;
                },
                validator: (value) => EmailValidator.validate(value)
                    ? null
                    : "Please enter a valid email",
                decoration: InputDecoration(
                  labelText: "Shorten a link here ...",
                  fillColor: Colors.black,
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: kPrimaryColor, width: 2.0),
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
            )),
        Container(
          width: size.width * 0.8,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: FlatButton(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
              color: kPrimaryColor,
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResultLink(link: link)),
              ),
              child: Text(
                "SHORTEN IT!",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
