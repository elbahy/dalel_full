import 'package:dalal_full/core/database/cache/cache_helper.dart';
import 'package:dalal_full/core/functions/custom_navigate.dart';
import 'package:dalal_full/core/services/locate_service.dart';
import 'package:dalal_full/core/utils/app_strings.dart';
import 'package:dalal_full/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    futureDelayed();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          AppStrings.appName,
          style: AppStyles.pacifico400Style64,
        ),
      ),
    );
  }
}

Future<Null> futureDelayed() {
  return Future.delayed(Duration(seconds: 2), () {
    bool isOnBoardingVisited =
        getIt<CacheHelper>().getData(key: 'isOnBoardingVisited') ?? false;

    !isOnBoardingVisited
        ? customNavigateReplace(path: '/OnBoardingView')
        : customNavigateReplace(path: '/LoginView');
  });
}
