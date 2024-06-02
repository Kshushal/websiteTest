import 'package:flutter/material.dart';
import 'package:myfirstapp/components/section_title.dart';
import 'package:myfirstapp/constant.dart';
import 'package:myfirstapp/models/service.dart';
import 'package:myfirstapp/sections/service/widgets/service_card.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
        constraints: const BoxConstraints(maxWidth: 1110),
        height: 600,
        child: Column(children: [
          const SectionTitle(
            color: Color(0xFFFF0000),
            title: "Service Offerings",
            subTitle: "My Strong Arenas",
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  services.length, (index) => ServiceCard(index: index)))
        ]));
  }
}
