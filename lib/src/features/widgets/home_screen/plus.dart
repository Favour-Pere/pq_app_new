import 'package:flutter/material.dart';
import 'package:pq_app_new/src/constants/colors.dart';
import 'package:pq_app_new/src/constants/text_styles.dart';

void showPlusSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return Container(
        decoration: BoxDecoration(
          color: tColorWhite,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              "Join Group Quiz",
              style: tFontInter.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: tColorTabColor,
              ),
              textAlign: TextAlign.center,
            ),
            Divider(height: 1, color: tColorSearchBar),
            SizedBox(height: 2),
            TextButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(padding: EdgeInsets.all(0)),
              child: Text(
                "Create Personal Quiz",
                textAlign: TextAlign.start,
                style: tFontInter.copyWith(
                  fontSize: 14,
                  color: tColorTabColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 2),
            TextButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(padding: EdgeInsets.all(0)),
              child: Text(
                "Create Group Quiz",
                style: tFontInter.copyWith(
                  fontSize: 14,
                  color: tColorTabColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 2),
            TextButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(padding: EdgeInsets.all(0)),
              child: Text(
                "Create AI Generated Quiz",
                style: tFontInter.copyWith(
                  fontSize: 14,
                  color: tColorTabColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
