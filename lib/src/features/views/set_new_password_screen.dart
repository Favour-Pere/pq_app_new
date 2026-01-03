import 'package:flutter/material.dart';
import 'package:pq_app_new/src/constants/colors.dart';
import 'package:pq_app_new/src/constants/text_styles.dart';

class SetNewPasswordScreen extends StatelessWidget {
  const SetNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: tColorRound,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: tColorTextHeading,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    SizedBox(width: 25),
                    Text(
                      'Set a new Password',
                      style: tFontInter.copyWith(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: tColorTextHeading,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30),

                Text(
                  'Create a new password. Ensure it differs from previous ones for security',
                  style: tFontInter.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: tColorTextSecondary,
                    height: 1.8,
                  ),
                ),

                SizedBox(height: 40),

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
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 2, color: tColorPrimary),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 2,
                        color: tColorTextSecondary,
                      ),
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
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 2, color: tColorPrimary),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 2,
                        color: tColorTextSecondary,
                      ),
                    ),
                    hintText: 'Re-enter your password',
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

                SizedBox(height: 20),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: tColorPrimary,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      "Update Password",
                      style: tFontInter.copyWith(
                        color: tColorWhite,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
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
