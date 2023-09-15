import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: FaIcon(
                        FontAwesomeIcons.house,
                        size: 25,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: FaIcon(
                        FontAwesomeIcons.magnifyingGlass,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Padding(
                      padding: EdgeInsets.all(
                        10,
                      ),
                      child: FaIcon(
                        FontAwesomeIcons.plus,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: FaIcon(
                        FontAwesomeIcons.user,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: FaIcon(
                        FontAwesomeIcons.gear,
                        size: 25,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
