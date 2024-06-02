import 'package:flutter/material.dart';
import 'package:myfirstapp/constant.dart';

class AboutText extends StatelessWidget {
  const AboutText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "About \nmy story",
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        const SizedBox(height: kDefaultPadding * 2)
      ],
    );
  }
}
