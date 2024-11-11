import 'package:flutter/material.dart';
import 'package:fruit_hup/core/resources/app_colors.dart';
import 'package:fruit_hup/core/resources/app_text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, required this.text});
  final void Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: AppColors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            )),
        onPressed: onPressed,
        child: Text(
          text,
          style: AppTextStyles.bold16.copyWith(color: AppColors.white),
        ),
      ),
    );
  }
}
