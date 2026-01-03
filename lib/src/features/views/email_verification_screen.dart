import 'package:flutter/material.dart';
import 'package:pq_app_new/src/constants/colors.dart';
import 'package:pq_app_new/src/constants/text_styles.dart';
import 'package:pq_app_new/src/routes/routes.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final _controller = List.generate(5, (_) => TextEditingController());

  @override
  void dispose() {
    for (final c in _controller) {
      c.dispose();
    }
    super.dispose();
  }

  void _submitCode() {
    // final code = _controller.map((c) => c.text).join();

    Navigator.pushNamed(context, AppRoutes.tNewPasswordScreen);

    // TODO: Verify the code
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 20),
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
                    'Verify Email',
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
                'We sent a reset link to contact@code.com enter 5 digit code that mentioned in the email',
                style: tFontInter.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.1,
                  height: 2,
                  color: tColorTextSecondary,
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    'Haven\'t gotten the email yet?',
                    style: tFontInter.copyWith(
                      color: tColorTextSecondary,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Resend email',
                      style: tFontInter.copyWith(
                        color: tColorPrimary,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(_controller.length, (index) {
                  return _OtpBox(
                    controller: _controller[index],
                    autoFocus: index == 0,
                    onChanged: (value) {
                      if (value.isNotEmpty && index < _controller.length - 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  );
                }),
              ),
              SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _submitCode,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: tColorPrimary,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    "Verify Code",
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
    );
  }
}

class _OtpBox extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;
  final ValueChanged<String>? onChanged;

  const _OtpBox({
    required this.controller,
    this.autoFocus = false,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 56,
      child: TextField(
        controller: controller,
        autofocus: autoFocus,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        onChanged: onChanged,
        decoration: InputDecoration(
          counterText: '',
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: tColorPrimary),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: tColorPrimary, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
