import 'package:dalal_full/core/services/locate_service.dart';
import 'package:dalal_full/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:dalal_full/features/auth/presentation/views/login_view.dart';
import 'package:dalal_full/features/auth/presentation/views/signup_view.dart';
import 'package:dalal_full/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:dalal_full/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  GoRoute(
    path: '/SignupView',
    builder: (context, state) => BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: SignupView(),
    ),
  ),
  GoRoute(
    path: '/LoginView',
    builder: (context, state) => BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: LoginView(),
    ),
  ),
]);
