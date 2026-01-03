import 'package:flutter/material.dart';
import 'package:pq_app_new/src/constants/colors.dart';
import 'package:pq_app_new/src/constants/text_styles.dart';

void showUserSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return Container(
        padding: const EdgeInsets.fromLTRB(24, 16, 24, 24),
        decoration: const BoxDecoration(
          color: tColorWhite,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 44,
              height: 4,
              decoration: BoxDecoration(
                color: tColorSearchBar,
                borderRadius: BorderRadius.circular(999),
              ),
            ),
            const SizedBox(height: 24),
            CircleAvatar(
              radius: 40,
              backgroundColor: tColorTextTertiary,
              child: Text(
                "😈",
                style: tFontInter.copyWith(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              "@Tuesday_Benedict",
              style: tFontInter.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 14),
            Text(
              "Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.",
              textAlign: TextAlign.center,
              style: tFontInter.copyWith(
                fontSize: 13,
                color: tColorTextHeading,
              ),
            ),
            SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: tColorPrimary,
                  padding: EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  "Follow",
                  style: tFontInter.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: tColorWhite,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
