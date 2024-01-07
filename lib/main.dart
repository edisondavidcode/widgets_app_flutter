import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app_flutter/config/router/app_router.dart';
import 'package:widgets_app_flutter/config/theme/app_theme.dart';
import 'package:widgets_app_flutter/presentation/providers/theme_provider.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int isColorMode = ref.watch(selectedColorProvider);
    final bool isDarkMode = ref.watch(isDarkmodeProvider);

    return MaterialApp.router(
      title: 'Flutter Widgets',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: isColorMode, isDarkmode: isDarkMode)
          .getTheme(),
    );
  }
}
