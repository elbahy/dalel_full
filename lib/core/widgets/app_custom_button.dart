import 'package:dalal_full/core/utils/app_colors.dart';
import 'package:dalal_full/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AppCustomButton extends StatelessWidget {
  const AppCustomButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: Text(
            text,
            style: AppStyles.poppins500Style18,
          )),
    );
  }
}
