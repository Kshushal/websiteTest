import 'package:flutter/material.dart';
import 'package:web/landingpage/colors.dart';
import 'package:web/landingpage/perfcard.dart';
import 'package:web/landingpage/project_card.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      width: screenWidth,
      child: Column(
        children: [
          // work project title
          const Text(
            'Work Project',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: CustomeColor.whiteprimary),
          ),
          const SizedBox(
            height: 50,
          ),
          // work project card
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 900,
            ),
            child: const Wrap(
              spacing: 30,
              runSpacing: 30,
              children: [SenCardWidget(), PerfCardWidget()],
            ),
          ),
        ],
      ),
    );
  }
}
