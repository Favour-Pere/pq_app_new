import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pq_app_new/src/constants/colors.dart';
import 'package:pq_app_new/src/constants/text_styles.dart';
import 'package:pq_app_new/src/features/models/onboarding_item/onboarding_item.dart';

class OnboardingSlide extends StatelessWidget {
  final OnboardingItem item;

  const OnboardingSlide({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                child: Center(
                  child: SvgPicture.asset(width: 191, height: 131, item.image),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Text(
          item.title,
          textAlign: TextAlign.center,
          style: tFontInter.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: tColorTextHeading,
          ),
        ),
        const SizedBox(height: 2),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            item.subTitle,
            textAlign: TextAlign.center,
            style: tFontInter.copyWith(
              fontSize: 14,
              height: 1.5,
              letterSpacing: 0,
              fontWeight: FontWeight.w400,
              color: tColorTextHeading,
            ),
          ),
        ),

        const SizedBox(height: 10),
      ],
    );
  }
}
