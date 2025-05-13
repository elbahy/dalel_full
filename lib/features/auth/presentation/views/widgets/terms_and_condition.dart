import 'package:dalal_full/core/utils/app_strings.dart';
import 'package:dalal_full/core/utils/app_styles.dart';
import 'package:dalal_full/features/auth/presentation/views/widgets/custom_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckbox(),
        Gap(10),
        Text.rich(
            style: AppStyles.poppins400Style12,
            TextSpan(children: [
              TextSpan(text: AppStrings.iHaveAgreeToOur),
              TextSpan(
                  text: AppStrings.termsAndCondition,
                  style: TextStyle(decoration: TextDecoration.underline)),
            ])),
      ],
    );
  }
}
