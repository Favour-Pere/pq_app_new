import 'package:pq_app_new/src/common/image_strings.dart';

class OnboardingItem {
  final String image;
  final String title;
  final String subTitle;

  OnboardingItem({
    required this.image,
    required this.title,
    required this.subTitle,
  });
}

final onboardingItems = [
  OnboardingItem(
    image: tOnboardingSlide1,
    title: 'Welcome to PQ',
    subTitle:
        'Your one-stop solution for accessing past questions. Prepare smarter and excel in your exams with ease.',
  ),

  OnboardingItem(
    image: tOnboardingSlide2,
    title: 'Access All Your Past Questions',
    subTitle:
        'Easily browse and download past exam questions from various faculties and department at your University. Study anytime, anywhere!',
  ),

  OnboardingItem(
    image: tOnboardingSlide3,
    title: 'Create Your Own Questions',
    subTitle:
        'Take your studies to the next level! Use our AI-powered question generator to create customized questions tailored to your needs.',
  ),
  OnboardingItem(
    image: tOnboardingSlide4,
    title: 'Ready to Ace Your Exams?',
    subTitle:
        'Sign in or create an account to start your journey to academic excellence. Let\'s make studying stress-free!',
  ),
];
