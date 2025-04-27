import 'package:dalal_full/features/on_boarding/presentation/views/widgets/custom_navbar.dart';
import 'package:dalal_full/features/on_boarding/presentation/views/widgets/on_boarding_body.dart';
import 'package:dalal_full/features/on_boarding/presentation/views/widgets/on_boarding_buttons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OnBoardingView extends StatelessWidget {
  OnBoardingView({super.key});
  final PageController pageController = PageController();
  final ValueNotifier<int> currentIndex = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Gap(40),
            CustomNavbar(
              currentIndex: currentIndex,
              pageController: pageController,
            ),
            Gap(32),
            OnBoardingBody(
                pageController: pageController,
                currentIndex: currentIndex,
                onPageChanged: (index) {
                  currentIndex.value = index;
                }),
            OnBoardingButtons(
              currentIndex: currentIndex,
              pageController: pageController,
            ),
            Gap(16),
          ],
        ),
      ),
    ));
  }
}
