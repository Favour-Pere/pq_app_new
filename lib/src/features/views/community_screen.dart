import 'package:flutter/material.dart';
import 'package:pq_app_new/src/constants/colors.dart';
import 'package:pq_app_new/src/constants/text_styles.dart';
import 'package:pq_app_new/src/features/widgets/community_screen/explore_tab.dart';
import 'package:pq_app_new/src/features/widgets/community_screen/followed_tab.dart';
import 'package:pq_app_new/src/features/widgets/home_screen/bottom_nav.dart';
import 'package:pq_app_new/src/features/widgets/home_screen/top_bar.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  int _bottomIndex = 2;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: tColorWhite,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: CircleBorder(),
          backgroundColor: tColorPrimary,
          child: Icon(Icons.add, color: tColorWhite),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 10),
              TopBar(title: "Community", onMenu: () {}, onBell: () {}),

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
                    Tab(text: "Followed"),
                    Tab(text: "Explore"),
                  ],
                ),
              ),

              const SizedBox(height: 10),
              const Expanded(
                child: TabBarView(children: [FollowedTab(), ExploreTab()]),
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
