import 'package:flutter/widgets.dart';
import 'package:myfirstapp/constant.dart';

class AboutSecText extends StatelessWidget {
  const AboutSecText({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 18,
            color: kTextColor,
            fontWeight: FontWeight.w200,
            height: 2.0),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
