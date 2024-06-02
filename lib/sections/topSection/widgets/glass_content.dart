import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myfirstapp/constant.dart';

class GlassContent extends StatelessWidget {
  const GlassContent({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
        constraints:
            BoxConstraints(maxWidth: 1110, maxHeight: size.height * 0.7),
        width: double.infinity,
        color: Colors.white.withOpacity(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello There!",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.white),
            ),
            const Text(
              "Shubham \n Bhavsar",
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                height: 1.5,
              ),
            ),
            Text(
              "Mobile Application Developer",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
