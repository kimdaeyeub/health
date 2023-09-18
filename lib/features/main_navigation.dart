import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health/features/home/views/home_screen.dart';
import 'package:health/features/search/views/search_home_screen.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  void _onMoveTap(int value) {
    _selectedIndex = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Stack(
            children: [
              Positioned.fill(
                child: Stack(
                  children: [
                    Offstage(
                      offstage: _selectedIndex != 0,
                      child: const HomeScreen(),
                    ),
                    Offstage(
                      offstage: _selectedIndex != 1,
                      child: const SearchHomeScreen(),
                    ),
                    Offstage(
                      offstage: _selectedIndex != 2,
                      child: const Center(
                        child: Text(
                          "음식추천",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Offstage(
                      offstage: _selectedIndex != 3,
                      child: const Center(
                        child: Text(
                          "Home",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Offstage(
                      offstage: _selectedIndex != 4,
                      child: const Center(
                        child: Text(
                          "세팅",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
                  child: Row(
                    // mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => _onMoveTap(0),
                        child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: FaIcon(
                            FontAwesomeIcons.house,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 24,
                      ),
                      GestureDetector(
                        onTap: () => _onMoveTap(1),
                        child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: FaIcon(
                            FontAwesomeIcons.magnifyingGlass,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 24,
                      ),
                      GestureDetector(
                        onTap: () => _onMoveTap(2),
                        child: const Padding(
                          padding: EdgeInsets.all(
                            10,
                          ),
                          child: FaIcon(
                            FontAwesomeIcons.plus,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 24,
                      ),
                      GestureDetector(
                        onTap: () => _onMoveTap(3),
                        child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: FaIcon(
                            FontAwesomeIcons.user,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 24,
                      ),
                      GestureDetector(
                        onTap: () => _onMoveTap(4),
                        child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: FaIcon(
                            FontAwesomeIcons.gear,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
