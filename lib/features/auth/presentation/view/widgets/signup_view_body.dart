import 'package:flutter/material.dart';
import 'package:fruit_hup/core/resources/constants.dart';
import 'package:fruit_hup/core/widgets/custom_button.dart';
import 'package:fruit_hup/core/widgets/custom_text_field.dart';

import 'have_an_account_widget.dart';
import 'terms_and_conditions.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            const CustomTextFormField(
                hintText: 'الاسم كامل', textInputType: TextInputType.name),
            const SizedBox(
              height: 16,
            ),
            const CustomTextFormField(
                hintText: 'البريد الإلكتروني',
                textInputType: TextInputType.emailAddress),
            const SizedBox(
              height: 16,
            ),
            const CustomTextFormField(
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: Color(0xffC9CECF),
              ),
              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
            ),
            const SizedBox(
              height: 16,
            ),
            const TermsAndConditionsWidget(),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              onPressed: () {},
              text: 'إنشاء حساب جديد',
            ),
            const SizedBox(
              height: 26,
            ),
            const HaveAnAccountWidget(),
          ],
        ),
      ),
    );
  }
}
