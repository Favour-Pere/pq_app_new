import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pq_app_new/src/common/image_strings.dart';
import 'package:pq_app_new/src/constants/colors.dart';
import 'package:pq_app_new/src/constants/text_styles.dart';
import 'package:pq_app_new/src/routes/routes.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),

                // Logo Image
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset(tLogoImage, width: 52, height: 50),
                ),

                const SizedBox(height: 20),

                // Heading
                Text(
                  'Create an account',
                  style: tFontInter.copyWith(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: tColorTextHeading,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      'Already have an account? ',
                      style: tFontInter.copyWith(
                        color: tColorTextSecondary,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.tLoginScreen);
                      },
                      child: Text(
                        'Sign In',
                        style: tFontInter.copyWith(
                          color: tColorPrimary,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                          decorationColor: tColorPrimary,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 40),

                Text(
                  'Email Address',
                  style: tFontInter.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: tColorTextSecondary,
                  ),
                ),

                SizedBox(height: 15),

                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: tColorBackground,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Enter your email here',
                    hintStyle: tFontInter.copyWith(
                      color: tColorTextSecondary,
                      fontSize: 16,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                  ),
                ),

                SizedBox(height: 25),

                Text(
                  'Password',
                  style: tFontInter.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: tColorTextSecondary,
                  ),
                ),

                SizedBox(height: 15),

                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: tColorBackground,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Enter your password',
                    hintStyle: tFontInter.copyWith(
                      color: tColorTextSecondary,
                      fontSize: 16,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.visibility_off),
                      onPressed: () {
                        // Toggle password visibility
                      },
                    ),
                  ),
                ),

                SizedBox(height: 25),
                Text(
                  'Confirm Password',
                  style: tFontInter.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: tColorTextSecondary,
                  ),
                ),
                SizedBox(height: 15),

                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: tColorBackground,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Confirm your password',
                    hintStyle: tFontInter.copyWith(
                      color: tColorTextSecondary,
                      fontSize: 16,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.visibility_off),
                      onPressed: () {
                        // Toggle password visibility
                      },
                    ),
                  ),
                ),
                SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: tColorPrimary,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        AppRoutes.tEmailVerificationScreen,
                      );
                    },
                    child: Text(
                      'Create Account',
                      style: tFontInter.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: tColorWhite,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                Row(
                  children: [
                    Expanded(
                      child: Divider(color: tColorTextSecondary, thickness: 1),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'or',
                        style: tFontInter.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: tColorTextSecondary,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(color: tColorTextSecondary, thickness: 1),
                    ),
                  ],
                ),

                SizedBox(height: 20),

                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    icon: SvgPicture.asset(
                      'assets/svg/google.svg',
                      width: 20,
                      height: 20,
                    ),
                    label: Text(
                      'Continue with Google',
                      style: tFontPoppins.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: tColorTextHeading,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: tColorTextSecondary),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      // Handle Google sign-in
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
