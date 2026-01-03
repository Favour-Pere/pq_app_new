import 'package:pq_app_new/src/features/views/community_screen.dart';
import 'package:pq_app_new/src/features/views/email_verification_screen.dart';
import 'package:pq_app_new/src/features/views/home_screen.dart';
import 'package:pq_app_new/src/features/views/set_new_password_screen.dart';
import 'package:pq_app_new/src/features/views/login_screen.dart';
import 'package:pq_app_new/src/features/views/onboarding_screen.dart';
import 'package:pq_app_new/src/features/views/password_email_verification_screen.dart';
import 'package:pq_app_new/src/features/views/reset_password_screen.dart';
import 'package:pq_app_new/src/features/views/signup_screen.dart';

class AppRoutes {
  static const tNewPasswordScreen = "/set-new-password-screen";
  static const tOnBoardingScreen = "/on-boarding-screen";
  static const tLoginScreen = "/login-screen";
  static const tSignUpScreen = "/sign-up-screen";
  static const tEmailVerificationScreen = "/email-verification-screen";
  static const tPasswordEmailVerificationScreen =
      "/password-email-verification-screen";
  static const tResetPasswordScreen = "/reset-password-screen";
  static const tHomeScreen = "/home-screen";
  static const tCommunityScreen = "/community-screen";

  static final routes = {
    tNewPasswordScreen: (context) => const SetNewPasswordScreen(),
    tOnBoardingScreen: (context) => const OnboardingScreen(),
    tLoginScreen: (context) => const LoginScreen(),
    tSignUpScreen: (context) => const SignupScreen(),
    tEmailVerificationScreen: (context) => const EmailVerificationScreen(),
    tPasswordEmailVerificationScreen: (context) =>
        const PasswordEmailVerificationScreen(),
    tResetPasswordScreen: (context) => const ResetPasswordScreen(),
    tHomeScreen: (context) => const HomeScreen(),
    tCommunityScreen: (context) => const CommunityScreen(),
  };
}
