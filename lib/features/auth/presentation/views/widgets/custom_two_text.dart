import 'package:dalal_full/core/utils/app_colors.dart';
import 'package:dalal_full/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTwoText extends StatelessWidget {
  const CustomTwoText({
    super.key,
    required this.text1,
    required this.text2,
  });

  final String text1, text2;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
        style: AppStyles.poppins400Style12,
        TextSpan(children: [
          TextSpan(text: text1),
          TextSpan(text: text2, style: TextStyle(color: AppColors.lightGrey))
        ]));
  }
}
