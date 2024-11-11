import 'package:flutter/material.dart';
import 'package:fruit_hup/core/functions.dart';
import 'package:fruit_hup/core/resources/assets.dart';
import 'package:fruit_hup/core/routing/routes.dart';
import 'package:svg_flutter/svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: Functions.isArabic()
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          children: [
            SvgPicture.asset(Assets.imagesPlant),
          ],
        ),
        SvgPicture.asset(Assets.imagesAppLogo),
        SvgPicture.asset(Assets.imagesSlpashBottom, fit: BoxFit.fill),
      ],
    );
  }

  void excuteNavigation() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, AppRoutes.onBoardingView);
    });
  }
}
