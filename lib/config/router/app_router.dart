import 'package:go_router/go_router.dart';
import 'package:widgets_app_flutter/presentation/screens/screens.dart';
import 'package:widgets_app_flutter/presentation/screens/snackbar/snackbar_screen.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: CounterScreen.name,
      path: '/counter-river',
      builder: (context, state) => const CounterScreen(),
    ),
    GoRoute(
      name: HomeScreen.name,
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      name: ButtonsScreen.name,
      path: '/buttons',
      builder: (context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      name: CardScreen.name,
      path: '/cards',
      builder: (context, state) => const CardScreen(),
    ),
    GoRoute(
      name: ProgressScreen.name,
      path: '/progress',
      builder: (context, state) => const ProgressScreen(),
    ),
    GoRoute(
      name: SnackbarScreen.name,
      path: '/snackbars',
      builder: (context, state) => const SnackbarScreen(),
    ),
    GoRoute(
      name: AnimatedScreen.name,
      path: '/animated',
      builder: (context, state) => const AnimatedScreen(),
    ),
    GoRoute(
      name: UiControlsScreen.name,
      path: '/ui-controls',
      builder: (context, state) => const UiControlsScreen(),
    ),
    GoRoute(
      name: AppTutorial.name,
      path: '/tutorial',
      builder: (context, state) => const AppTutorial(),
    ),
    GoRoute(
      name: InfinitiScrollScreen.name,
      path: '/infinite',
      builder: (context, state) => const InfinitiScrollScreen(),
    ),
  ],
);
