import 'package:flutter/material.dart';
import 'package:pq_app_new/src/constants/colors.dart';
import 'package:pq_app_new/src/constants/text_styles.dart';
import 'package:pq_app_new/src/features/models/onboarding_item/onboarding_item.dart';
import 'package:pq_app_new/src/features/widgets/onboarding_screen/onboarding_slide.dart';
import 'package:pq_app_new/src/routes/routes.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _goNext() {
    if (_currentPage < onboardingItems.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    } else {
      // Navigate to another screen or perform any action when onboarding is complete
      Navigator.pushReplacementNamed(context, AppRoutes.tLoginScreen);
    }
  }

  void _skip() {
    _pageController.jumpToPage(onboardingItems.length - 1);
  }

  @override
  Widget build(BuildContext context) {
    final isLast = _currentPage == onboardingItems.length - 1;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  const Spacer(),
                  if (!isLast)
                    TextButton(
                      onPressed: _skip,
                      child: Text(
                        'Skip',
                        style: tFontInter.copyWith(
                          color: tColorTextSecondary,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                ],
              ),
            ),

            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: onboardingItems.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (_, index) =>
                    OnboardingSlide(item: onboardingItems[index]),
              ),
            ),

            const SizedBox(height: 16),

            // Dots + buttons
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(onboardingItems.length, (index) {
                      final selected = index == _currentPage;
                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        height: selected ? 12 : 10,
                        width: selected ? 12 : 10,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: selected
                                ? tColorPrimary
                                : tColorTextSecondary,
                            width: selected ? 3 : 2,
                          ),
                          color: tColorWhite,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 5),

            // Next / Get Started Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _goNext,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: tColorPrimary,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    isLast ? 'Get Started' : 'Next',
                    style: tFontInter.copyWith(
                      color: tColorWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
