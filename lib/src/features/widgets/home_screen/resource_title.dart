import 'package:flutter/material.dart';
import 'package:pq_app_new/src/constants/colors.dart';
import 'package:pq_app_new/src/constants/text_styles.dart';

class ResourceTitle extends StatelessWidget {
  final String title;
  final String subTitle;
  final String meta;
  final VoidCallback onTap;
  const ResourceTitle({
    super.key,
    required this.title,
    required this.subTitle,
    required this.meta,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          children: [
            Container(
              width: 58,
              height: 53,
              decoration: BoxDecoration(
                color: tColorImage,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: tFontInter.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: tColorTextHeading,
                    ),
                  ),
                  const SizedBox(height: 4),

                  Text(
                    subTitle,
                    style: tFontInter.copyWith(
                      fontSize: 12,
                      color: tColorTextSecondary,
                    ),
                  ),
                  const SizedBox(height: 4),

                  Text(
                    meta,
                    style: tFontInter.copyWith(
                      fontSize: 10,
                      color: tColorTextSecondary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
