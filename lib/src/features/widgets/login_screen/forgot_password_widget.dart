import 'package:flutter/material.dart';
import 'package:pq_app_new/src/constants/colors.dart';
import 'package:pq_app_new/src/constants/text_styles.dart';

void showForgotPasswordSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (ctx) {
      return Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(ctx).viewInsets.bottom),
        child: Container(
          decoration: const BoxDecoration(
            color: tColorWhite,
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          ),
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Forgot Password',
                style: tFontPoppins.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: tColorTextHeading,
                ),
              ),

              const SizedBox(height: 12),

              Text(
                'Please enter your email to reset the password',
                style: tFontInter.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: tColorRemeberText,
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Your Email',
                style: tFontInter.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: tColorTextSecondary,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: tColorBackground,
                  hintText: 'Enter your email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle password reset
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: tColorPrimary,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    "Send Code",
                    style: tFontInter.copyWith(
                      color: tColorWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      );
    },
  );
}
