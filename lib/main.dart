import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:porfolio/global_widgets/responsive.dart';
import 'package:porfolio/modules/root/module.dart';
import 'package:porfolio/res/themes.dart';
import 'package:porfolio/routing/routes.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  setPathUrlStrategy();
  runApp(const ProviderScope(child: MyApp()));
}

final themeProvider = StateProvider<ThemeMode>((ref) => ThemeMode.light);

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      theme: lightTheme,
      themeMode: ref.watch(themeProvider),
      darkTheme: darkThemeData,
      initialRoute: AppRoutes.root,
      debugShowCheckedModeBanner: false,
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
        },
      ),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case AppRoutes.root:
            return PageRouteBuilder(
              settings: settings,
              pageBuilder: (_, __, ___) => const RootPage(),
            );
          default:
            return null;
        }
      },
      builder: (context, child) {
        final data = MediaQuery.of(context);
        final factor = data.size.width > kTabletWidth ? 1.2 : 1.0;

        return MediaQuery(
          data: data.copyWith(textScaleFactor: factor),
          child: child ?? const SizedBox(),
        );
      },
    );
  }
}
