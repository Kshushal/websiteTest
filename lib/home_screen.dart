// ignore_for_file: deprecated_member_use, unused_element

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web/landingpage/about_desktop.dart';
import 'package:web/landingpage/about_mobile.dart';
import 'package:web/landingpage/colors.dart';
import 'package:web/landingpage/landing_page.dart';
import 'package:web/landingpage/landmobil.dart';
import 'package:web/landingpage/prioject_section.dart';
import 'package:web/landingpage/skills_desktop.dart';
import 'package:web/landingpage/skills_mobile.dart';
import 'package:web/landingpage/work_page.dart';
import 'package:web/widget/navbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();

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
        backgroundColor: Color.fromARGB(255, 36, 69, 78),
        title: const Text(''),
      ),
      drawer: Drawer(
        shadowColor: Colors.orange,
        surfaceTintColor: Colors.red,
        elevation: 5,
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
      body: webBody(context),
    );
  }

  Widget porfolioDesktopAppBar(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomeColor.scaffoldBg,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 32, 33, 77),
        actions: [
          MaterialButton(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            onPressed: () {
              _scrollTo(0.0);
            },
            child: const Text(
              'Home',
              style:
                  TextStyle(color: CustomeColor.whitesencondary, fontSize: 18),
            ),
          ),
          const SizedBox(width: 8),
          MaterialButton(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            onPressed: () {
              _scrollTo(800);
            },
            child: const Text(
              'About',
              style:
                  TextStyle(color: CustomeColor.whitesencondary, fontSize: 18),
            ),
          ),
          const SizedBox(width: 8),
          MaterialButton(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            onPressed: () {
              _scrollTo(1300.0);
            },
            child: const Text(
              'Skills',
              style:
                  TextStyle(color: CustomeColor.whitesencondary, fontSize: 18),
            ),
          ),
          const SizedBox(width: 8),
          MaterialButton(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            onPressed: () {
              _scrollTo(1600.0);
            },
            child: const Text(
              'Experience',
              style:
                  TextStyle(color: CustomeColor.whitesencondary, fontSize: 18),
            ),
          ),
          const SizedBox(width: 8),
          MaterialButton(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            onPressed: () {
              _scrollTo(2000.0);
            },
            child: const Text(
              'Projects',
              style:
                  TextStyle(color: CustomeColor.whitesencondary, fontSize: 18),
            ),
          ),
        ],
      ),
      body: webBody(context),
    );
  }

  void _scrollTo(double position) {
    _scrollController.animateTo(
      position,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget webBody(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromRGBO(28, 28, 56, 1),
                  Color.fromRGBO(37, 25, 44, 1)
                ]),
          ),
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: <Widget>[
                if (constraints.maxWidth >= 600)
                  const LandingPageDesktop()
                else
                  const LandingPageMobile(),
                if (constraints.maxWidth >= 600)
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, bottom: 10, right: 15.0, left: 15.0),
                    child: Container(
                      height: screenHeight * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(200),
                            bottomLeft: Radius.circular(60),
                            bottomRight: Radius.circular(200),
                            topRight: Radius.circular(40)),
                        color: CustomeColor.bgLight1,
                        border: Border.all(),
                      ),
                      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                      width: screenWidth,
                      child: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'About Me',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: CustomeColor.whiteprimary),
                          ),
                          SizedBox(height: 50),
                          AboutDesktop(),
                        ],
                      ),
                    ),
                  )
                else
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, bottom: 10, right: 15.0, left: 15.0),
                    child: Container(
                      height: screenHeight * 0.7,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(200),
                            bottomLeft: Radius.circular(60),
                            bottomRight: Radius.circular(200),
                            topRight: Radius.circular(40)),
                        color: CustomeColor.bgLight1,
                        border: Border.all(),
                      ),
                      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                      width: screenWidth,
                      child: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'About Me',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: CustomeColor.whiteprimary),
                          ),
                          SizedBox(height: 50),
                          AboutMobile(),
                        ],
                      ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, bottom: 10, right: 15.0, left: 15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(200),
                          bottomLeft: Radius.circular(60),
                          bottomRight: Radius.circular(200),
                          topRight: Radius.circular(40)),
                      color: CustomeColor.bgLight1,
                      border: Border.all(),
                    ),
                    padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                    width: screenWidth,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Skills',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: CustomeColor.whiteprimary),
                        ),
                        const SizedBox(height: 50),
                        if (constraints.maxWidth >= 600)
                          const SkillsDesktop()
                        else
                          const SkillsMobile(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, bottom: 10, right: 15.0, left: 15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(200),
                          bottomLeft: Radius.circular(60),
                          bottomRight: Radius.circular(200),
                          topRight: Radius.circular(40)),
                      color: CustomeColor.bgLight1,
                      border: Border.all(),
                    ),
                    padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                    width: screenWidth,
                    // ignore: prefer_const_constructors
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
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
                const FooterView(),
              ],
            ),
          ),
        ),
      );
    });
  }
}
