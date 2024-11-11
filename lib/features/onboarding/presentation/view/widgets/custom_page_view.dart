import 'package:flutter/material.dart';
import 'package:fruit_hup/core/resources/app_colors.dart';
import 'package:fruit_hup/core/resources/app_text_style.dart';
import 'package:fruit_hup/core/resources/assets.dart';

import 'page_view_item.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisible: true,
          subtitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          image: Assets.imagesOnboardingImage1,
          backgroundImage: Assets.imagesOnboardingBackground1,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'مرحبًا بك في',
                style: AppTextStyles.bold23,
              ),
              Text(
                '  HUB',
                style: AppTextStyles.bold23.copyWith(color: AppColors.yellow),
              ),
              Text(
                'Fruit',
                style: AppTextStyles.bold23.copyWith(color: AppColors.green),
              ),
            ],
          ),
        ),
        const PageViewItem(
          isVisible: false,
          subtitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          image: Assets.imagesOnboardingImage2,
          backgroundImage: Assets.imagesOnboardingBackground2,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('ابحث وتسوق'),
            ],
          ),
        ),
      ],
    );
  }
}
