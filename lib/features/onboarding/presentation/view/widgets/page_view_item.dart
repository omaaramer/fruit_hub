import 'package:flutter/material.dart';
import 'package:fruit_hup/core/resources/app_text_style.dart';
import 'package:fruit_hup/core/routing/routes.dart';
import 'package:fruit_hup/generated/l10n.dart';
import 'package:svg_flutter/svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.subtitle,
      required this.image,
      required this.backgroundImage,
      required this.title,
      required this.isVisible});
  final String subtitle, image, backgroundImage;
  final Widget title;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  backgroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(image),
              ),
              Visibility(
                visible: isVisible,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed(AppRoutes.loginView);
                    },
                    child: Text(
                      S.of(context).next,
                      style: AppTextStyles.semiBold13,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 54), //TODO responsive ui
        title,

        const SizedBox(height: 24), //TODO responsive ui
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37.0),
          child: Text(subtitle,
              textAlign: TextAlign.center, style: AppTextStyles.semiBold13),
        ),
      ],
    );
  }
}
