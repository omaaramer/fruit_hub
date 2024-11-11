import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hup/core/resources/app_colors.dart';
import 'package:fruit_hup/core/resources/app_text_style.dart';
import 'package:fruit_hup/core/routing/routes.dart';
import '../signup_view.dart';

class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'لا تمتلك حساب؟',
            style: AppTextStyles.semiBold16.copyWith(
              color: const Color(0xFF949D9E),
            ),
          ),
          TextSpan(
            text: ' ',
            style: AppTextStyles.semiBold16.copyWith(
              color: const Color(0xFF616A6B),
            ),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushNamed(context, AppRoutes.signup);
              },
            text: 'قم بإنشاء حساب',
            style: AppTextStyles.semiBold16.copyWith(color: AppColors.green),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
