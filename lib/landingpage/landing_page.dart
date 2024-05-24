// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:web/widget/circle.dart';
import 'package:web/widget/data.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class LandingPageDesktop extends StatelessWidget {
  const LandingPageDesktop({super.key});

  List<Widget> pageChildren(double width) {
    return <Widget>[
      SizedBox(
        width: width,
        height: 1000,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 350,
            ),
            Row(
              children: [
                AnimatedTextKit(
                    repeatForever: true,
                    isRepeatingAnimation: true,
                    animatedTexts: [
                      ColorizeAnimatedText(
                        welcome,
                        textStyle: colorizeTextStyle,
                        colors: colorizeColors,
                      ),
                    ]),
                Image.asset(
                  "assets/images/wl.png",
                  height: 80,
                  width: 80,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            AnimatedTextKit(
                repeatForever: true,
                isRepeatingAnimation: true,
                animatedTexts: [
                  ColorizeAnimatedText(
                    "Hi, I'm",
                    textStyle: colorizeTextStyle,
                    colors: colorizeColors,
                  ),
                ]),
            AnimatedTextKit(
                totalRepeatCount: 1,
                repeatForever: true,
                isRepeatingAnimation: true,
                animatedTexts: [
                  ColorizeAnimatedText(
                    name,
                    textStyle: colorizeTextStyle,
                    colors: colorizeColors,
                  ),
                ]),
            DefaultTextStyle(
              style: const TextStyle(
                color: Color.fromARGB(255, 237, 233, 233),
                fontSize: 15,
              ),
              child: AnimatedTextKit(
                  repeatForever: true,
                  isRepeatingAnimation: true,
                  animatedTexts: [
                    TyperAnimatedText(' Flutter Developer,'),
                    TyperAnimatedText(' Android Developer,'),
                    TyperAnimatedText(' IOS Developer,'),
                    TyperAnimatedText(' Web Developer.'),
                  ]),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: 250,
              height: 50,
              child: MaterialButton(
                color: Colors.pink,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                onPressed: () {
                  _launchURL(resumeLink);
                },
                child: const Text(
                  "RESUME",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
      // Padding(

      WidgetCircularAnimator(
        child: Padding(
          padding: const EdgeInsets.only(right: 50.0),
          child: Image.asset(
            "assets/images/s_img.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

const colorizeTextStyle = TextStyle(
  fontSize: 35.0,
  fontWeight: FontWeight.bold,
);

const mcolorizeTextStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);

const mhcolorizeTextStyle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
);

const colorizeColors = [Color.fromARGB(255, 0, 0, 0), Colors.black, Colors.red];
