import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:projectf/screens/splash/splash_view.dart';
import 'package:projectf/screens/main/select_view.dart';
import 'package:projectf/screens/single_play/onboarding/views/onboarding_step1.dart';
import 'package:projectf/screens/multi_play/onboarding/views/onboarding_multi_step1.dart';

final routerConfig = GoRouter(
    initialLocation: Routes.splash,
    routes:[
      GoRoute(
        path: Routes.splash,
        name: Routes.splash,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const SplashView(),
        ),
      ),
      GoRoute(
        path: Routes.select,
        name: Routes.select,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const SelectView(),
        ),
      ),
      GoRoute(
        path: Routes.singleInitStep1,
        name: Routes.singleInitStep1,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const OnboardingStep1View(),
        ),
      ),

      GoRoute(
        path: Routes.multiInitStep1,
        name: Routes.multiInitStep1,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const OnboardingMultiStep1View(),
        ),
      ),
    ],
);


abstract class Routes{
  static const splash = '/';
  static const main = '/main';
  static const select = '/select';
  static const singleInitStep1 = '/init/singleStep1';
  static const multiInitStep1 = '/init/multiStep1';
}