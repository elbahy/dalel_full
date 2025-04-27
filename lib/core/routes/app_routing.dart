import 'package:dalal_full/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:dalal_full/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

GoRouter goRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => SplashView(),
  ),
  GoRoute(
    path: '/OnBoardingView',
    builder: (context, state) => OnBoardingView(),
  ),
]);
