import 'package:flutter/material.dart';
import 'package:pq_app_new/src/constants/text_styles.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
    required this.title,
    required this.onMenu,
    required this.onBell,
  });

  final String title;
  final VoidCallback onMenu;
  final VoidCallback onBell;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          IconButton(onPressed: onMenu, icon: const Icon(Icons.menu)),
          const Spacer(),
          Text(
            title,
            style: tFontInter.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: onBell,
            icon: const Icon(Icons.notifications_none),
          ),
        ],
      ),
    );
  }
}
