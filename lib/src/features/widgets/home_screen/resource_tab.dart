import 'package:flutter/material.dart';
import 'package:pq_app_new/src/constants/colors.dart';
import 'package:pq_app_new/src/constants/text_styles.dart';
import 'package:pq_app_new/src/features/widgets/home_screen/resource_title.dart';

class ResourceTab extends StatefulWidget {
  const ResourceTab({super.key});

  @override
  State<ResourceTab> createState() => _ResourceTabState();
}

class _ResourceTabState extends State<ResourceTab> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      children: [
        InkWell(
          onTap: () => setState(() => _expanded = !_expanded),
          child: Row(
            children: [
              Text(
                'General Mathematics',
                style: tFontInter.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: tColorTabColor,
                ),
              ),
              const Spacer(),
              Text(
                '4 hrs ago',
                style: tFontInter.copyWith(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: tColorTextTertiary,
                ),
              ),
              const SizedBox(width: 10),

              Icon(
                _expanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                color: tColorTextTertiary,
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        const Divider(height: 1, color: tColorSearchBar),
        if (_expanded) ...[
          const SizedBox(height: 10),
          ResourceTitle(
            title: "MTH 101 - Elementary Mathematics",
            subTitle: "Niger Delta University",
            meta: "23 pages",
            onTap: () {},
          ),
          const Divider(),
          ResourceTitle(
            title: "MTH 101 - Elementary Mathematics",
            subTitle: "Niger Delta University",
            meta: "23 pages . 2mb",
            onTap: () {},
          ),
          const Divider(height: 1),
        ],
      ],
    );
  }
}
