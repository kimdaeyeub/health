import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health/features/search/views/search_detail_screen.dart';
import 'package:health/features/search/views/search_screen.dart';

class SearchHomeScreen extends StatefulWidget {
  const SearchHomeScreen({super.key});

  @override
  State<SearchHomeScreen> createState() => _SearchHomeScreenState();
}

class _SearchHomeScreenState extends State<SearchHomeScreen> {
  void _onMoveDetailScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SearchDetailScreen(),
      ),
    );
  }

  void _onMoveSearchScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SearchScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Search",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: _onMoveSearchScreen,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).secondaryHeaderColor,
                  ),
                  child: const FaIcon(
                    FontAwesomeIcons.magnifyingGlass,
                    size: 20,
                  ),
                ),
              )
            ],
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TabBar(
                  indicatorColor: Theme.of(context).primaryColor,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: const [
                    Tab(
                      child: Text(
                        "운동",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "식단",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
          ),
          child: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    for (var i = 0; i < 10; i++) ...[
                      GestureDetector(
                        onTap: _onMoveDetailScreen,
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 28,
                            backgroundColor: Theme.of(context).primaryColor,
                          ),
                          title: const Text(
                            "하루 3끼",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          subtitle: Text(
                            "닭가슴살, 고구마, 계란",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey.shade500,
                            ),
                          ),
                          trailing: FaIcon(
                            FontAwesomeIcons.chevronRight,
                            size: 17,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ),
                      const Divider(),
                    ],
                  ],
                ),
              ),
              const Center(
                child: Text(
                  "식단",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
