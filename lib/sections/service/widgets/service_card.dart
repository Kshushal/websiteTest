import 'package:flutter/material.dart';
import 'package:myfirstapp/constant.dart';
import 'package:myfirstapp/models/service.dart';

class ServiceCard extends StatefulWidget {
  const ServiceCard({
    super.key,
    required this.index,
  });
  final int index;

  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool isHover = false;
  Duration duration = const Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      hoverColor: Colors.transparent,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
        height: 256,
        width: 250,
        // color: Colors.green,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: services[widget.index].color,
            boxShadow: [if (!isHover) kDefaultCardShadow]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: const EdgeInsets.all(kDefaultPadding * 1.5),
              height: 130,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  if (!isHover)
                    BoxShadow(
                      offset: const Offset(0, 20),
                      blurRadius: 30,
                      color: Colors.black.withOpacity(0.1),
                    ),
                ],
              ),
              child: Image.asset(
                services[widget.index].image,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: kDefaultPadding),
            Text(
              services[widget.index].title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
