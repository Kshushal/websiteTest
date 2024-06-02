import 'package:flutter/material.dart';
import 'package:web/landingpage/about_desktop.dart';
import 'package:web/landingpage/about_mobile.dart';
import 'package:web/landingpage/card_switch.dart';
import 'package:web/landingpage/colors.dart';
import 'package:web/landingpage/landing_page.dart';
import 'package:web/landingpage/landmobil.dart';
import 'package:web/landingpage/prioject_section.dart';
import 'package:web/landingpage/skills_desktop.dart';
import 'package:web/landingpage/skills_mobile.dart';
import 'package:web/landingpage/work_page.dart';
import 'package:web/widget/navbar.dart';

import 'package:sidebarx/sidebarx.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return porfolioMobileAppBar(context);
            } else {
              return porfolioDesktopAppBar(context);
            }
          },
        );
      },
    );
  }

  Widget porfolioMobileAppBar(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(
        child: Container(
          color: const Color.fromARGB(255, 2, 2, 2),
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(200),
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(200),
                      topRight: Radius.circular(40)),
                  color: Color.fromARGB(255, 82, 30, 62),
                ),
                child: Center(
                  child: Text(
                    "<Shubham/>",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.home,
                  color: Colors.red,
                ),
                title: const Text(
                  'Home',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  _scrollTo(0.0);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.person,
                  color: Colors.orange,
                ),
                title: const Text(
                  'About',
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  _scrollTo(850.0);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.play_arrow_sharp,
                  color: Colors.yellow,
                ),
                title: const Text(
                  'Skills',
                  style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  _scrollTo(1400.0);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.work_history_sharp,
                  color: Colors.green,
                ),
                title: const Text(
                  'Experience',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  _scrollTo(1900.0);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.event,
                  color: Colors.blue,
                ),
                title: const Text(
                  'Projects',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  _scrollTo(2500.0);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.handshake_sharp,
                  color: Colors.purple,
                ),
                title: const Text(
                  'Get in touch with me',
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  _scrollTo(2800.0);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
     
      body: screenBody(context),
    );
  }

  Widget porfolioDesktopAppBar(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        actions: [
          MaterialButton(
            onPressed: () {
              _scrollTo(0.0);
            },
            child: const Text(
              'Home',
              style:
                  TextStyle(color: Color.fromARGB(255, 3, 3, 3), fontSize: 18),
            ),
          ),
          const SizedBox(width: 8),
          MaterialButton(
            onPressed: () {
              _scrollTo(800);
            },
            child: const Text(
              'About',
              style:
                  TextStyle(color: Color.fromARGB(255, 3, 3, 3), fontSize: 18),
            ),
          ),
          const SizedBox(width: 8),
          MaterialButton(
            onPressed: () {
              _scrollTo(1300.0);
            },
            child: const Text(
              'Skills',
              style:
                  TextStyle(color: Color.fromARGB(255, 3, 3, 3), fontSize: 18),
            ),
          ),
          const SizedBox(width: 8),
          MaterialButton(
            onPressed: () {
              _scrollTo(1600.0);
            },
            child: const Text(
              'Experience',
              style:
                  TextStyle(color: Color.fromARGB(255, 3, 3, 3), fontSize: 18),
            ),
          ),
          const SizedBox(width: 8),
          MaterialButton(
            onPressed: () {
              _scrollTo(2000.0);
            },
            child: const Text(
              'Projects',
              style:
                  TextStyle(color: Color.fromARGB(255, 3, 3, 3), fontSize: 18),
            ),
          ),
        ],
      ),
      body: screenBody(context),
    );
  }

  void _scrollTo(double position) {
    _scrollController.animateTo(
      position,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  Widget screenBody(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                "assets/images/top.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromRGBO(225, 33, 242, 0.494),
                      Color.fromRGBO(109, 44, 223, 0.494),
                    ],
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  if (constraints.maxWidth >= 1600)
                    const LandingPageDesktop()
                  else
                    const LandingPageMobile(),
                  const Text(
                    'About Me',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: MediaQuery.of(context).size.width * 0.13),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(25)),
                      child: Column(
                        children: [
                          const SizedBox(height: 25),
                          if (MediaQuery.of(context).size.width >= 1200)
                            const AboutDesktop()
                          else
                            const AboutMobile(),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Skills',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: MediaQuery.of(context).size.width * 0.13),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          if (MediaQuery.of(context).size.width >= 600)
                            const SkillsDesktop()
                          else
                            const SkillsMobile(),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: MediaQuery.of(context).size.width * 0.05),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(40)),
                        border: Border.all(),
                      ),
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.width * 0.05),
                      child: const Column(
                        children: [
                          Text(
                            'Work Experience',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: CustomeColor.whiteprimary),
                          ),
                          SizedBox(height: 50),
                          WorkView(),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                    child: ProjectSection(),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                    child: GlassCardNavigation(),
                  ),
                  const FooterView(),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
