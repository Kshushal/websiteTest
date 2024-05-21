// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web/widget/data.dart';
import 'package:web/landingpage/colors.dart';

class WorkView extends StatelessWidget {
  const WorkView({super.key});

  Widget mypoints(String text, String url) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Text(
                  text,
                  style: const TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: () => _launchURL(expletter),
                    child: const Text(
                      "Experience Letter",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () => _launchURL(intcertificate),
                    child: const Text("Internship Letter",
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return mypoints(aboutWorkExperience, expletter);
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
