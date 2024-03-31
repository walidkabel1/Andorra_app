import 'dart:developer';

import 'package:dependencies/dependencies.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
// Firebase Analytics

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    Modular.to.addListener(() async {
      try {
        final page =
            Modular.to.path.split('/').lastWhere((element) => element != '');

        // Modular.setInitialRoute(
        //     NavigatorKeys.AUTH_KEY + NavigatorKeys.LOGIN_PAGE_EMAIL);
        // await analytics.setCurrentScreen(screenName: page);
        // ignore: avoid_catches_without_on_clauses
      } catch (e) {
        log(e.toString());
      }
    });
  }

  T tripleResolverCallback<T extends Object>() {
    return Modular.get<T>();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      routerDelegate: Modular.routerDelegate,
      routeInformationParser: Modular.routeInformationParser,
      debugShowCheckedModeBanner: false,
      title: 'Andorra 360',
    );
  }
}
