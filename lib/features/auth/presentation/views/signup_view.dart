import 'package:dalal_full/core/utils/app_strings.dart';
import 'package:dalal_full/features/auth/presentation/views/widgets/custom_two_text.dart';
import 'package:dalal_full/features/auth/presentation/views/widgets/custom_welcome_text.dart';
import 'package:dalal_full/features/auth/presentation/views/widgets/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: Gap(152)),
            const SliverToBoxAdapter(child: CustomWelcomeText()),
            const SliverToBoxAdapter(child: Gap(12)),
            const SliverToBoxAdapter(child: SignupForm()),
            const SliverToBoxAdapter(child: Gap(16)),
            const SliverToBoxAdapter(
              child: Center(
                child: CustomTwoText(
                    text1: AppStrings.alreadyHaveAnAccount,
                    text2: AppStrings.signIn),
              ),
            )
          ],
        ),
      ),
    );
  }
}
