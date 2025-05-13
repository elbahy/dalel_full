import 'package:dalal_full/core/utils/app_strings.dart';
import 'package:dalal_full/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomWelcomeText extends StatelessWidget {
  const CustomWelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text(
        AppStrings.welcome,
        style: AppStyles.poppins600Style24.copyWith(fontSize: 28),
      ),
    );
  }
}
