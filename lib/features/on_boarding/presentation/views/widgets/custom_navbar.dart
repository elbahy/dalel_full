import 'package:dalal_full/core/database/cache/cache_helper.dart';
import 'package:dalal_full/core/services/locate_service.dart';
import 'package:dalal_full/core/utils/app_strings.dart';
import 'package:dalal_full/core/utils/app_styles.dart';
import 'package:dalal_full/features/on_boarding/data/on_boarding_model.dart';
import 'package:flutter/material.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({
    super.key,
    required this.currentIndex,
    required this.pageController,
  });
  final ValueNotifier<int> currentIndex;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: currentIndex,
        builder: (context, value, child) => value != onBoardingList.length - 1
            ? GestureDetector(
                onTap: () {
                  pageController.animateToPage(onBoardingList.length - 1,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut);
                  getIt<CacheHelper>()
                      .putData(key: 'isOnBoardingVisited', value: true);
                },
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    AppStrings.skip,
                    style: AppStyles.poppins300Style16,
                  ),
                ))
            : const SizedBox(
                height: 24,
              ));
  }
}
