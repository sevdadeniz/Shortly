
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shortly/screens/linkWrite.dart';

class Skip1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: "Brand Recognition",
              body:
                  "Boos your brand recognition with each click.Generic links don't mean a thing. Branded links help instil confidence in your content.",
              image: SvgPicture.asset("assets/images/logo.svg"),
            ),
            PageViewModel(
              title: "Detailed Records",
              body:
                  "Here you can write the description of the page, to explain someting...",
              image: SvgPicture.asset("assets/images/shape.svg"),
            ),
            PageViewModel(
              title: "Fully Customizable",
              body:
                  "Improve brand awareness and content discoverability though customizable links, supercharcing audience engagement.",
              image: SvgPicture.asset("assets/images/logo.svg"),
            ),
          ],
          showNextButton: false,
          done: Text(
            "Skip",

          ),
          onDone: () => goToHome(context),
        ),
      );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => LinkWrite()),
      );

  Widget buildeImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
        imagePadding: EdgeInsets.all(24),
      );
}
