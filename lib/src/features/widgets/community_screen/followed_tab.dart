import 'package:flutter/material.dart';
import 'package:pq_app_new/src/constants/colors.dart';
import 'package:pq_app_new/src/constants/text_styles.dart';
import 'package:pq_app_new/src/features/models/community/followed_item.dart';
import 'package:pq_app_new/src/features/widgets/community_screen/show_user_sheet.dart';

class FollowedTab extends StatelessWidget {
  const FollowedTab({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      FollowedItem(
        tag: "#physics102tutorial",
        timeOrDate: "04:25AM",
        badgeCount: 10,
        pinned: true,
      ),
      FollowedItem(
        tag: "#chemistry100levelndututorial",
        timeOrDate: "05:00AM",
        badgeCount: 0,
        pinned: true,
      ),
      FollowedItem(
        tag: "#100levelndugistgroup",
        timeOrDate: "02/07/2025",
        badgeCount: 80,
      ),
      FollowedItem(
        tag: "#sidehustlegroup",
        timeOrDate: "04:25AM",
        badgeCount: 0,
      ),
      FollowedItem(
        tag: "#100levelndugistgroup",
        timeOrDate: "03:40PM",
        badgeCount: 0,
      ),
    ];
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      itemCount: items.length,
      separatorBuilder: (_, _) => const SizedBox(height: 14),
      itemBuilder: (context, index) {
        final item = items[index];
        return Row(
          children: [
            if (item.pinned)
              Icon(Icons.push_pin, size: 16, color: tColorTabColor),

            SizedBox(width: 10),

            Expanded(
              child: Text(
                item.tag,
                style: tFontInter.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),

            Text(
              item.timeOrDate,
              style: tFontInter.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: tColorTextTertiary,
              ),
            ),
            const SizedBox(width: 10),
            if (item.badgeCount > 0)
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: tColorPrimary,
                  borderRadius: BorderRadius.circular(999),
                ),
                child: Text(
                  "${item.badgeCount}",
                  style: tFontInter.copyWith(
                    fontSize: 10,
                    color: tColorWhite,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),

            const SizedBox(width: 10),

            GestureDetector(
              onTap: () => showUserSheet(context),
              child: CircleAvatar(
                radius: 12,
                backgroundColor: tColorTextTertiary,
                child: Text("😈", style: tFontInter.copyWith(fontSize: 14)),
              ),
            ),
          ],
        );
      },
    );
  }
}
