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
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1200),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(120),
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(160),
                      topRight: Radius.circular(40)),
                  // color: Color.fromARGB(255, 51, 75, 110),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // for (int i = 0; i < platformItems.length; i++)
                    //   Container(
                    //     margin: const EdgeInsets.only(bottom: 1.0),
                    //     // width: double.maxFinite,
                    //     decoration: const BoxDecoration(
                    //       // color: Color.fromARGB(255, 51, 75, 110),
                    //       borderRadius: BorderRadius.only(
                    //           topLeft: Radius.circular(120),
                    //           bottomLeft: Radius.circular(60),
                    //           bottomRight: Radius.circular(160),
                    //           topRight: Radius.circular(40)),
                    //     ),
                    //     child: ListTile(
                    //       leading: Image.asset(
                    //         platformItems[i]["img"],
                    //         width: 26,
                    //       ),
                    //       title: Text(
                    //         platformItems[i]["title"],
                    //         style: TextStyle(color: Colors.black, fontSize: 22),
                    //         textAlign: TextAlign.center,
                    //       ),
                    //     ),
                    //   ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: [
                    //     Image.asset(
                    //       platformItems[0]["img"],
                    //       width: 30,
                    //     ),
                    //     Text(platformItems[0]["title"]),
                    //     SizedBox(
                    //       width: 15,
                    //     ),
                    //     Image.asset(
                    //       platformItems[1]["img"],
                    //       width: 30,
                    //     ),
                    //     Text(platformItems[1]["title"]),
                    //     SizedBox(
                    //       width: 15,
                    //     ),
                    //     Image.asset(
                    //       platformItems[2]["img"],
                    //       width: 30,
                    //     ),
                    //     Text(platformItems[2]["title"]),
                    //     SizedBox(
                    //       width: 15,
                    //     ),
                    //     Image.asset(
                    //       platformItems[3]["img"],
                    //       width: 30,
                    //     ),
                    //     Text(platformItems[3]["title"]),
                    //   ],
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          skillsItems[0]["img"],
                          width: 80, // increased width
                          height: 80, // optional, adjust as needed
                        ),
                        Text(
                          skillsItems[0]["title"],
                          style: const TextStyle(fontSize: 22), // increased font size
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Image.asset(
                          skillsItems[1]["img"],
                          width: 80, // increased width
                          height: 80, // optional, adjust as needed
                        ),
                        Text(
                          skillsItems[1]["title"],
                          style: const TextStyle(fontSize: 22), // increased font size
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Image.asset(
                          skillsItems[2]["img"],
                          width: 80, // increased width
                          height: 80, // optional, adjust as needed
                        ),
                        Text(
                          skillsItems[2]["title"],
                          style: const TextStyle(fontSize: 22), // increased font size
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Image.asset(
                          skillsItems[3]["img"],
                          width: 80, // increased width
                          height: 80, // optional, adjust as needed
                        ),
                        Text(
                          skillsItems[3]["title"],
                          style: const TextStyle(fontSize: 22), // increased font size
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Image.asset(
                          skillsItems[4]["img"],
                          width: 80, // increased width
                          height: 80, // optional, adjust as needed
                        ),
                        Text(
                          skillsItems[4]["title"],
                          style: const TextStyle(fontSize: 22), // increased font size
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Image.asset(
                          skillsItems[5]["img"],
                          width: 80, // increased width
                          height: 80, // optional, adjust as needed
                        ),
                        Text(
                          skillsItems[5]["title"],
                          style: const TextStyle(fontSize: 22), // increased font size
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Image.asset(
                          skillsItems[6]["img"],
                          width: 80, // increased width
                          height: 80, // optional, adjust as needed
                        ),
                        Text(
                          skillsItems[6]["title"],
                          style: const TextStyle(fontSize: 22), // increased font size
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 50,
        ),
        // skills
        // Flexible(
        //   child: ConstrainedBox(
        //     constraints: const BoxConstraints(maxWidth: 1500),
        //     child: Wrap(
        //       direction: Axis.horizontal,
        //       spacing: 100.0,
        //       runSpacing: 50.0,
        //       children: [
        //         // for (int i = 0; i < skillsItems.length; i++)
        //         // Chip(
        //         //   // backgroundColor: const Color.fromARGB(255, 51, 75, 110),
        //         //   label: Text(skillsItems[i]["title"]),
        //         //   avatar: Image.asset(
        //         //     skillsItems[i]["img"],
        //         //   ),
        //         // )
        //         Row(
        //           children: [
        //             Image.asset(
        //               skillsItems[0]["img"],
        //               width: 50,
        //             ),
        //             Text(skillsItems[0]["title"]),
        //             SizedBox(
        //               width: 15,
        //             ),
        //             Image.asset(
        //               skillsItems[1]["img"],
        //               width: 30,
        //             ),
        //             Text(skillsItems[1]["title"]),
        //           ],
        //         ),
        //       ],
        //     ),
        //   ),
        // )
      ],
    );
  }
}
