import 'package:flutter/material.dart';
import 'package:pq_app_new/src/constants/colors.dart';
import 'package:pq_app_new/src/constants/text_styles.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final String subTitle;
  final Widget? trailing;

  const SectionHeader({
    super.key,
    required this.title,
    required this.subTitle,
    this.trailing,
  });

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
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: tColorTabColor,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subTitle,
                style: tFontInter.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                  color: tColorTextTertiary,
                ),
              ),
            ],
          ),
        ),
        if (trailing != null) trailing!,
      ],
    );
  }
}
