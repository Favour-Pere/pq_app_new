import 'package:flutter/material.dart';
import 'package:pq_app_new/src/constants/colors.dart';
import 'package:pq_app_new/src/features/widgets/home_screen/plus.dart';
import 'package:pq_app_new/src/routes/routes.dart';

class BottomNav extends StatelessWidget {
  final int index;
  final ValueChanged<int> onTap;
  const BottomNav({super.key, required this.index, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                onTap(0);
                Navigator.pushNamed(context, AppRoutes.tHomeScreen);
              },
              icon: Icon(
                Icons.search,
                color: index == 0 ? tColorActive : tColorTextHeading,
              ),
            ),

            IconButton(
              onPressed: () {
                onTap(1);
                showPlusSheet(context);
              },
              icon: Icon(
                Icons.add,
                color: index == 1 ? tColorActive : tColorTextHeading,
              ),
            ),

            IconButton(
              onPressed: () {
                onTap(2);
                Navigator.pushNamed(context, AppRoutes.tCommunityScreen);
              },
              icon: Icon(
                Icons.chat_bubble_outline,
                color: index == 2 ? tColorActive : tColorTextHeading,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
