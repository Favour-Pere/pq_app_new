import 'package:flutter/material.dart';
import 'package:pq_app_new/src/constants/colors.dart';
import 'package:pq_app_new/src/features/widgets/home_screen/section_header.dart';

class QuizzesTab extends StatelessWidget {
  const QuizzesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      children: [
        SectionHeader(
          title: "First Quiz Created",
          subTitle: "MTH 101 - Elementary Mathemeatics . 4 hrs ago",
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert_outlined,
              size: 20,
              color: tColorTextTertiary,
            ),
          ),
        ),
        const Divider(height: 1, color: tColorSearchBar),
      ],
    );
  }
}
