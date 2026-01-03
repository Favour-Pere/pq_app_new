import 'package:flutter/material.dart';
import 'package:pq_app_new/src/constants/colors.dart';
import 'package:pq_app_new/src/constants/text_styles.dart';

class ExploreTile extends StatelessWidget {
  const ExploreTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.members,
    required this.onAvatarTap,
    required this.onMoreTap,
  });

  final String title;
  final String subtitle;
  final int members;
  final VoidCallback onAvatarTap;
  final VoidCallback onMoreTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: tFontInter.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: tFontInter.copyWith(fontSize: 12, color: tColorTabColor),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        const SizedBox(width: 12),
        Row(
          children: [
            Icon(Icons.people_outline, size: 18, color: tColorRemeberText),
            const SizedBox(width: 4),
            Text(
              "$members",
              style: tFontInter.copyWith(
                fontSize: 12,
                color: tColorRemeberText,
              ),
            ),
          ],
        ),

        const SizedBox(width: 10),
        GestureDetector(
          onTap: onAvatarTap,
          child: CircleAvatar(
            radius: 12,
            backgroundColor: tColorSearchBar,
            child: Text("A", style: TextStyle(fontSize: 14)),
          ),
        ),
        const SizedBox(width: 10),
        IconButton(
          onPressed: onMoreTap,
          icon: Icon(Icons.more_vert, size: 18, color: tColorTabColor),
        ),
      ],
    );
  }
}
