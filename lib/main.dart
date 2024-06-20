import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:my_portfolio_app/app/app.dialogs.dart';
import 'package:my_portfolio_app/app/app.locator.dart';
import 'package:my_portfolio_app/app/app.router.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:flutter_animate/flutter_animate.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  await setupLocator(stackedRouter: stackedRouter);
  setupDialogUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(
      preferDesktop: true,
      builder: (_) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerDelegate: stackedRouter.delegate(),
        routeInformationParser: stackedRouter.defaultRouteParser(),
      ),
    ).animate().fadeIn(
          delay: const Duration(milliseconds: 50),
          duration: const Duration(milliseconds: 400),
        ).animate().scale(
          delay: const Duration(milliseconds: 50),
          duration: const Duration(milliseconds: 400));
  }
}
