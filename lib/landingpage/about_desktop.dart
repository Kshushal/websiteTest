import 'package:flutter/material.dart';
import 'package:web/widget/data.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // about
        Flexible(
          fit: FlexFit.loose,
          child: ConstrainedBox(
              constraints: const BoxConstraints(
                  maxWidth: double.maxFinite, maxHeight: double.maxFinite),
              // backgroundColor: CustomeColor.bgLight2,
              child: Text(
                aboutMePoints1,
                style: const TextStyle(fontSize: 20, color: Colors.white),
                textAlign: TextAlign.justify,
              )),
        )
      ],
    );
  }
}
