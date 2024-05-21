import 'package:flutter/material.dart';

class ProjectView extends StatelessWidget {
  const ProjectView({super.key});

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
                "Projects",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              const Divider(),
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 15.0,
                mainAxisSpacing: 15.0,
                shrinkWrap: true,
                children: [
                  projectCard(
                    context,
                    "Sensartics",
                    "assets/images/senlogo.png",
                  ),
                  projectCard(
                    context,
                    "PerfBite",
                    "assets/images/post1.png",
                  ),
                  projectCard(
                    context,
                    "Weather",
                    "assets/images/post1.png",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget projectCard(
    BuildContext context,
    String title,
    String? imagePath,
  ) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Card(
      elevation: 5, // Remove elevation to match container
      color: Colors.transparent,
      margin: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Optional: Add border radius
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
            const Divider(),
            if (imagePath != null)
              Image.asset(
                imagePath,
                height: screenHeight * 0.1,
                width: screenWidth * 0.1,
                fit: BoxFit.contain,
              ),
          ],
        ),
      ),
    );
  }
}
