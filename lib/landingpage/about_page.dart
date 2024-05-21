// import 'package:flutter/material.dart';
// import 'package:web/data.dart';

// class AboutView extends StatelessWidget {
//   const AboutView({super.key});

//   Widget mypoints(IconData iconData, String text) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         Icon(iconData, color: Colors.white), // Example icon
//         const SizedBox(width: 15),
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.only(top: 25.0),
//             child: Text(
//               text,
//               style: const TextStyle(fontSize: 18, color: Colors.white),
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.all(25),
//       decoration: BoxDecoration(
//         gradient: const LinearGradient(
//           begin: Alignment.bottomLeft,
//           end: Alignment.topRight,
//           colors: [
//             Color.fromRGBO(36, 11, 54, 1.0),
//             Color.fromRGBO(36, 68, 59, 1),
//             Color.fromRGBO(36, 11, 54, 1.0),
//           ],
//         ),
//         borderRadius: BorderRadius.circular(10), // Optional: Add border radius
//       ),
//       child: Card(
//         elevation: 0, // Remove elevation to match container
//         color: Colors.transparent,
//         margin: const EdgeInsets.all(0),
//         shape: RoundedRectangleBorder(
//           borderRadius:
//               BorderRadius.circular(10), // Optional: Add border radius
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text(
//                 "About Me",
//                 style: TextStyle(fontSize: 20, color: Colors.white),
//               ),
//               const Divider(),
//               const SizedBox(height: 10),
//               mypoints(Icons.keyboard_arrow_right, aboutMePoints1),
//               mypoints(Icons.keyboard_arrow_right, aboutMePoints2),
//               mypoints(Icons.keyboard_arrow_right, aboutMePoints3),
//               mypoints(Icons.keyboard_arrow_right, aboutMePoints4),
//               mypoints(Icons.keyboard_arrow_right, aboutMePoints5),
//               mypoints(Icons.keyboard_arrow_right, aboutMePoints6),
//               mypoints(Icons.keyboard_arrow_right, aboutMePoints7),
//               mypoints(Icons.keyboard_arrow_right, aboutMePoints8),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
