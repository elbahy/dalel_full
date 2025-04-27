import 'package:dalal_full/core/database/cache/cache_helper.dart';
import 'package:dalal_full/core/functions/custom_navigate.dart';
import 'package:dalal_full/core/services/locate_service.dart';
import 'package:dalal_full/core/utils/app_strings.dart';
import 'package:dalal_full/core/utils/app_styles.dart';
import 'package:dalal_full/core/widgets/app_custom_button.dart';
import 'package:dalal_full/features/on_boarding/data/on_boarding_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OnBoardingButtons extends StatelessWidget {
  const OnBoardingButtons({
    super.key,
    required this.currentIndex,
    required this.pageController,
  });

  final ValueNotifier<int> currentIndex;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ValueListenableBuilder(
          valueListenable: currentIndex,
          builder: (context, value, child) => Column(
            children: [
              AppCustomButton(
                  text: value != onBoardingList.length - 1
                      ? AppStrings.next
                      : AppStrings.createAccount,
                  onPressed: value != onBoardingList.length - 1
                      ? () {
                          pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut);
                        }
                      : () {
                          customNavigateReplace(path: '/SignupView');
                          getIt<CacheHelper>()
                              .putData(key: 'isOnBoardingVisited', value: true);
                        }),
              Gap(16),
              value == onBoardingList.length - 1
                  ? GestureDetector(
                      onTap: () {
                        getIt<CacheHelper>()
                            .putData(key: 'isOnBoardingVisited', value: true);
                        customNavigateReplace(path: '/LoginView');
                      },
                      child: Text(
                        AppStrings.loginNow,
                        style: AppStyles.poppins400Style20.copyWith(
                            decoration: TextDecoration.underline, fontSize: 16),
                      ),
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        ),
      ],
    );
  }
}
