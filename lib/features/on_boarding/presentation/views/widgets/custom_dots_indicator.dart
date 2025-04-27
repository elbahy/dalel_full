import 'package:dalal_full/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({
    super.key,
    required this.currentIndex,
  });

  final ValueNotifier<int> currentIndex;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: currentIndex,
        builder: (context, value, child) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  height: 7,
                  width: index == value ? 25 : 7,
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  decoration: BoxDecoration(
                    color: index == value
                        ? AppColors.deepBrown
                        : AppColors.lightGrey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                );
              }),
            ));
  }
}
