import 'package:flutter/material.dart';
import 'package:pq_app_new/src/features/widgets/community_screen/explore_tile.dart';
import 'package:pq_app_new/src/features/widgets/community_screen/show_user_sheet.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      children: [
        ExploreTile(
          title: "#physics102tutorial",
          subtitle: "This group is for first year computer science...",
          members: 935,
          onAvatarTap: () => showUserSheet(context),
          onMoreTap: () {},
        ),
      ],
    );
  }
}
