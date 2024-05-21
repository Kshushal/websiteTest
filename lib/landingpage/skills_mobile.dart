import 'package:flutter/material.dart';
import 'package:web/landingpage/skills_items.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 500),
      child: Column(
        children: [
          // platfrom
          for (int i = 0; i < platformItems.length; i++)
            Container(
              margin: const EdgeInsets.only(bottom: 5.0),
              width: double.maxFinite,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 51, 75, 110),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(120),
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(160),
                    topRight: Radius.circular(40)),
              ),
              child: ListTile(
                leading: Image.asset(
                  platformItems[i]["img"],
                  width: 26,
                ),
                title: Text(platformItems[i]["title"]),
              ),
            ),
          const SizedBox(
            height: 50,
          ),
          // skills
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            alignment: WrapAlignment.center,
            children: [
              for (int i = 0; i < skillsItems.length; i++)
                Chip(
                  backgroundColor: const Color.fromARGB(255, 51, 75, 110),
                  label: Text(skillsItems[i]["title"]),
                  avatar: Image.asset(
                    skillsItems[i]["img"],
                  ),
                )
            ],
          )
        ],
      ),
    );
  }
}
