import 'package:dalal_full/core/utils/app_styles.dart';
import 'package:dalal_full/features/on_boarding/data/on_boarding_model.dart';
import 'package:dalal_full/features/on_boarding/presentation/views/widgets/custom_dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({
    super.key,
    required this.pageController,
    this.onPageChanged,
    required this.currentIndex,
  });

  final PageController pageController;
  final void Function(int)? onPageChanged;
  final ValueNotifier<int> currentIndex;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: pageController,
        itemCount: onBoardingList.length,
        onPageChanged: onPageChanged,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => Column(
          children: [
            Image.asset(
              onBoardingList[index].image,
            ),
            Gap(24),
            CustomDotIndicator(currentIndex: currentIndex),
            Gap(32),
            Text(onBoardingList[index].title,
                maxLines: 2,
                style: AppStyles.poppins600Style24,
                textAlign: TextAlign.center,
                overflow: TextOverflow.clip),
            Gap(16),
            Text(onBoardingList[index].subTitle,
                maxLines: 2,
                style: AppStyles.poppins300Style16,
                textAlign: TextAlign.center,
                overflow: TextOverflow.clip),
          ],
        ),
      ),
    );
  }
}
