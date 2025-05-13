import 'package:dalal_full/core/utils/app_strings.dart';
import 'package:dalal_full/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:dalal_full/features/auth/presentation/views/widgets/terms_and_condition.dart';
import 'package:flutter/material.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        CustomTextField(labelText: AppStrings.fristName),
        CustomTextField(labelText: AppStrings.lastName),
        CustomTextField(labelText: AppStrings.emailAddress),
        CustomTextField(labelText: AppStrings.password, isPasswordField: true),
        TermsAndCondition()
      ],
    ));
  }
}
