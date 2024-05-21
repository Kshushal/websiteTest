import 'package:flutter/material.dart';

import 'package:web/landingpage/colors.dart';

class PerfCardWidget extends StatelessWidget {
  const PerfCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.antiAlias,
        height: 310,
        width: 260,
        decoration: const BoxDecoration(
          color: CustomeColor.bgLight2,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(100),
              topRight: Radius.circular(40)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // img project
            Image.asset(
              "assets/images/notification.jpg",
              height: 180,
              width: 260,
              fit: BoxFit.fill,
            ),

            //  title
            const Padding(
              padding: EdgeInsets.fromLTRB(12, 15, 12, 15),
              child: Text(
                "Sensartics App",
                style: TextStyle(
                    color: CustomeColor.whiteprimary,
                    fontWeight: FontWeight.bold),
              ),
            ),

            Container(
              color: CustomeColor.bgLight1,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              child: const Row(
                children: [
                  Text(
                    "Available on:",
                    style: TextStyle(
                        fontSize: 12, color: Color.fromARGB(255, 246, 237, 57)),
                  ),
                  Spacer(),
                ],
              ),
            )
          ],
        ));
  }
}
