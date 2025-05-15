import 'package:dalal_full/core/functions/custom_navigate.dart';
import 'package:dalal_full/core/utils/app_strings.dart';
import 'package:dalal_full/core/widgets/app_custom_button.dart';
import 'package:dalal_full/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:dalal_full/features/auth/presentation/auth_cubit/auth_states.dart';
import 'package:dalal_full/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:dalal_full/features/auth/presentation/views/widgets/terms_and_condition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passController = TextEditingController();
    return BlocConsumer<AuthCubit, AuthStates>(
      listener: (context, state) {
        if (state is SignupSucessState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Account created successfully'),
            ),
          );
          customNavigateReplace(path: '/LoginView');
        } else if (state is SignupFailureState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage),
            ),
          );
        }
      },
      builder: (context, state) {
        return Form(
            child: Column(
          children: [
            CustomTextField(labelText: AppStrings.fristName),
            CustomTextField(labelText: AppStrings.lastName),
            CustomTextField(
              labelText: AppStrings.emailAddress,
              controller: emailController,
            ),
            CustomTextField(
              labelText: AppStrings.password,
              isPasswordField: true,
              controller: passController,
            ),
            TermsAndCondition(),
            Gap(88),
            state is SignupLoadingState
                ? const CircularProgressIndicator()
                : AppCustomButton(
                    text: AppStrings.signUp,
                    onPressed: () {
                      BlocProvider.of<AuthCubit>(context)
                          .signupWithEmailAndPassword(
                              emailAddress: emailController.text,
                              password: passController.text);
                    })
          ],
        ));
      },
    );
  }
}
