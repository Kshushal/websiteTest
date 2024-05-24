import 'package:flutter/material.dart';
import 'package:web/widget/data.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({super.key});

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
                maxWidth: double.maxFinite,
              ),
              // backgroundColor: CustomeColor.bgLight2,
              child: Text(
                aboutMePoints,
                style: const TextStyle(fontSize: 18, color: Colors.white),
                textAlign: TextAlign.justify,
              )),
        )
      ],
    );
  }
}
