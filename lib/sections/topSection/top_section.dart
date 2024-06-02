import 'package:flutter/material.dart';
import 'package:myfirstapp/constant.dart';

import 'widgets/logo_blur_box.dart';
import 'widgets/menu.dart';
import 'widgets/person_pic.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: const BoxConstraints(maxHeight: 1000, minHeight: 200),
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/back9.jpg"),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(top: kDefaultPadding),
        width: 1200,
        child: Stack(
          children: [
            LogoAndBlurBox(size: size),
            const Positioned(
              bottom: 60,
              right: 75,
              child: PersonPic(),
            ),
            const Positioned(
              left: 100,
              child: Menu(),
            ),
          ],
        ),
      ),
    );
  }
}
