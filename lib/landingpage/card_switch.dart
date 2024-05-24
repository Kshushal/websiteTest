import 'package:flutter/material.dart';

class GlassCardNavigation extends StatelessWidget {
  GlassCardNavigation({super.key});

  final ValueNotifier<int> currentIndex = ValueNotifier<int>(0);
  final ValueNotifier<bool> isNext = ValueNotifier<bool>(true);

  final List<Map<String, dynamic>> cards = [
    {
      'title': 'Card 1',
      'description': 'This is the description for card 1',
      'image': AssetImage('assets/images/one.png'),
    },
    {
      'title': 'Card 2',
      'description': 'This is the description for card 2',
      'image': AssetImage('assets/images/two.png'),
    },
    {
      'title': 'Card 3',
      'description': 'This is the description for card 3',
      'image': AssetImage('assets/images/three.png'),
    },
  ];

  void _previousCard() {
    isNext.value = false;
    currentIndex.value = (currentIndex.value - 1 + cards.length) % cards.length;
  }

  void _nextCard() {
    isNext.value = true;
    currentIndex.value = (currentIndex.value + 1) % cards.length;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Left Arrow
          GestureDetector(
            onTap: _previousCard,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                shape: BoxShape.circle,
                color: Colors.grey.withOpacity(0.5),
              ),
              child: const Icon(
                Icons.arrow_left,
                color: Colors.black,
              ),
            ),
          ),
          // Space for the card
          ValueListenableBuilder<int>(
            valueListenable: currentIndex,
            builder: (context, value, child) {
              return ValueListenableBuilder<bool>(
                valueListenable: isNext,
                builder: (context, isNextValue, child) {
                  return AnimatedSwitcher(
                    duration: const Duration(milliseconds: 500),
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      final offsetAnimation = isNextValue
                          ? Tween<Offset>(
                                  begin: const Offset(1, 0),
                                  end: const Offset(0, 0))
                              .animate(animation)
                          : Tween<Offset>(
                                  begin: const Offset(-1, 0),
                                  end: const Offset(0, 0))
                              .animate(animation);
                      return SlideTransition(
                        position: offsetAnimation,
                        child: child,
                      );
                    },
                    child: CardWidget(
                      key: ValueKey<int>(value),
                      title: cards[value]['title']!,
                      description: cards[value]['description']!,
                      image: cards[value]['image'],
                    ),
                  );
                },
              );
            },
          ),
          // Right Arrow
          GestureDetector(
            onTap: _nextCard,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                shape: BoxShape.circle,
                color: Colors.grey.withOpacity(0.5),
              ),
              child: const Icon(
                Icons.arrow_right,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String title;
  final String description;
  final ImageProvider image;

  const CardWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      width: 300,
      height: 200,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        // Semi-transparent white background

        border: Border.all(color: const Color.fromARGB(255, 9, 7, 7)),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 4,
            blurRadius: 10,
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image(
              image: image,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
