import 'package:flutter/material.dart';
import 'package:web/widget/data.dart';

class RespView extends StatelessWidget {
  const RespView({super.key});

  Widget mypoints(IconData iconData, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(iconData, color: Colors.white), // Example icon
        const SizedBox(width: 15),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Text(
              text,
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Color.fromRGBO(36, 11, 54, 1.0),
            Color.fromRGBO(36, 68, 59, 1),
            Color.fromRGBO(36, 11, 54, 1.0),
          ],
        ),
        borderRadius: BorderRadius.circular(10), // Optional: Add border radius
      ),
      child: Card(
        elevation: 0, // Remove elevation to match container
        color: Colors.transparent,
        margin: const EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(10), // Optional: Add border radius
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Responsibilities",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              const Divider(),
              mypoints(Icons.keyboard_arrow_right, aboutRes1),
              mypoints(Icons.keyboard_arrow_right, aboutRes2),
              mypoints(Icons.keyboard_arrow_right, aboutRes3),
              mypoints(Icons.keyboard_arrow_right, aboutRes4),
            ],
          ),
        ),
      ),
    );
  }
}
