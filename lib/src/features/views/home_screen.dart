import 'package:flutter/material.dart';
import 'package:pq_app_new/src/constants/colors.dart';
import 'package:pq_app_new/src/constants/text_styles.dart';
import 'package:pq_app_new/src/features/widgets/home_screen/bottom_nav.dart';
import 'package:pq_app_new/src/features/widgets/home_screen/quizzes_tab.dart';
import 'package:pq_app_new/src/features/widgets/home_screen/resource_tab.dart';
import 'package:pq_app_new/src/features/widgets/home_screen/top_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _bottomIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: tColorWhite,
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 10),
              TopBar(title: "Search", onMenu: () {}, onBell: () {}),

              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                    filled: true,
                    fillColor: tColorSearchBar,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 14,
                      horizontal: 14,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TabBar(
                  labelStyle: tFontInter.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: tColorTabColor,
                  ),
                  isScrollable: true,
                  dividerHeight: 1,
                  dividerColor: tColorSearchBar,
                  labelColor: tColorTabColor,
                  indicatorColor: tColorPrimary,
                  indicatorWeight: 1,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabAlignment: TabAlignment.start,
                  tabs: [
                    Tab(text: "Quizzes"),
                    Tab(text: "Resources"),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Expanded(
                child: TabBarView(children: [QuizzesTab(), ResourceTab()]),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNav(
          index: _bottomIndex,
          onTap: (i) => setState(() {
            _bottomIndex = i;
          }),
        ),
      ),
    );
  }
}
