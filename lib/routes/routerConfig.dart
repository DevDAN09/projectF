import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:projectf/screens/splash/splash_view.dart';
import 'package:projectf/screens/main/select_view.dart';
import 'package:projectf/screens/single_play/onboarding/views/onboarding_step1.dart';
import 'package:projectf/screens/single_play/onboarding/views/onboarding_step2.dart';
import 'package:projectf/screens/multi_play/onboarding/views/onboarding_multi_step1.dart';
import 'package:projectf/screens/multi_play/onboarding/views/onboarding_multi_step2.dart';
import 'package:projectf/screens/multi_play/onboarding/views/onboarding_multi_step_create_room.dart';
import 'package:projectf/screens/multi_play/readyroom/ready_room_main.dart';

import '../screens/multi_play/game/tagger/tagger_step1.dart';
import '../screens/multi_play/game/player/player_step1.dart';
import '../screens/multi_play/game/tagger/tagger_result.dart';

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
        path: Routes.singleInitStep2,
        name: Routes.singleInitStep2,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const OnboardingStep2View(),
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
      GoRoute(
        path: Routes.multiInitStep2,
        name: Routes.multiInitStep2,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const OnboardingMultiStep2View(),
        ),
      ),
      GoRoute(
        path: Routes.CreateRoomStep1,
        name: Routes.CreateRoomStep1,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const OnboardingCreateRoomStep1(),
        ),
      ),

      GoRoute(
        path: Routes.ReadyRoomMain,
        name: Routes.ReadyRoomMain,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const ReadyRoomMainView(),
        ),
      ),

      GoRoute(
        path: Routes.TaggerStep1,
        name: Routes.TaggerStep1,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const TaggerStep1View(),
        ),
      ),

      GoRoute(
        path: Routes.TaggerResult,
        name: Routes.TaggerResult,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const TaggerResultView(),
        ),
      ),

      GoRoute(
        path: Routes.PlayerStep1,
        name: Routes.PlayerStep1,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const PlayerStep1View(),
        ),
      ),

    ],
);


abstract class Routes{
  static const splash = '/';
  static const main = '/main';
  static const select = '/select';
  static const singleInitStep1 = '/init/singleStep1';
  static const singleInitStep2 = '/init/singleStep2';
  static const multiInitStep1 = '/init/multiStep1';
  static const multiInitStep2 = '/init/multiStep2';
  static const CreateRoomStep1 = '/init/CreateRoomStep1';
  static const ReadyRoomMain = '/init/ReadyRoomMain';
  static const TaggerStep1 = '/game/TaggerStep1';
  static const TaggerResult = '/game/TaggerResult';
  static const PlayerStep1 = '/game/PlayerStep1';
}