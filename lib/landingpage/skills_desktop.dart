import 'package:flutter/material.dart';
import 'package:web/landingpage/skills_items.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //  platform
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 450),
          child: Wrap(
            spacing: 5.0,
            runSpacing: 5.0,
            children: [
              for (int i = 0; i < platformItems.length; i++)
                Container(
                  width: 200,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(120),
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(160),
                        topRight: Radius.circular(40)),
                    color: Color.fromARGB(255, 51, 75, 110),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    leading: Image.asset(
                      platformItems[i]["img"],
                      width: 30,
                    ),
                    title: Text(platformItems[i]["title"]),
                  ),
                )
            ],
          ),
        ),
        const SizedBox(
          width: 50,
        ),
        // skills
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Wrap(
              spacing: 15.0,
              runSpacing: 15.0,
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
            ),
          ),
        )
      ],
    );
  }
}
