// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i10;
import 'package:stacked/stacked.dart' as _i9;
import 'package:stacked_services/stacked_services.dart' as _i8;

import '../ui/views/about_view/aboutview.dart' as _i5;
import '../ui/views/contact_view/contactview.dart' as _i7;
import '../ui/views/home_view/homeview.dart' as _i4;
import '../ui/views/main_view/main_view.dart' as _i2;
import '../ui/views/project_view/projectview.dart' as _i6;
import '../ui/views/splash_view/splash_view.dart' as _i1;
import '../ui/views/unknown_view/unknown_view.dart' as _i3;

final stackedRouter =
    StackedRouterWeb(navigatorKey: _i8.StackedService.navigatorKey);

class StackedRouterWeb extends _i9.RootStackRouter {
  StackedRouterWeb({_i10.GlobalKey<_i10.NavigatorState>? navigatorKey})
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    SplashViewRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    MainViewRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.MainView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    UnknownViewRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.UnknownView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeViewRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.HomeView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    AboutViewRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.AboutView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    ProjectViewRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i6.ProjectView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    ContactViewRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i7.ContactView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          SplashViewRoute.name,
          path: '/',
        ),
        _i9.RouteConfig(
          MainViewRoute.name,
          path: '/',
          children: [
            _i9.RouteConfig(
              HomeViewRoute.name,
              path: '',
              parent: MainViewRoute.name,
            ),
            _i9.RouteConfig(
              AboutViewRoute.name,
              path: 'about',
              parent: MainViewRoute.name,
            ),
            _i9.RouteConfig(
              ProjectViewRoute.name,
              path: 'project',
              parent: MainViewRoute.name,
            ),
            _i9.RouteConfig(
              ContactViewRoute.name,
              path: 'contact',
              parent: MainViewRoute.name,
            ),
          ],
        ),
        _i9.RouteConfig(
          UnknownViewRoute.name,
          path: '/404',
        ),
        _i9.RouteConfig(
          '*#redirect',
          path: '*',
          redirectTo: '/404',
          fullMatch: true,
        ),
      ];
}

/// generated route for
/// [_i1.SplashView]
class SplashViewRoute extends _i9.PageRouteInfo<void> {
  const SplashViewRoute()
      : super(
          SplashViewRoute.name,
          path: '/',
        );

  static const String name = 'SplashView';
}

/// generated route for
/// [_i2.MainView]
class MainViewRoute extends _i9.PageRouteInfo<void> {
  const MainViewRoute({List<_i9.PageRouteInfo>? children})
      : super(
          MainViewRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'MainView';
}

/// generated route for
/// [_i3.UnknownView]
class UnknownViewRoute extends _i9.PageRouteInfo<void> {
  const UnknownViewRoute()
      : super(
          UnknownViewRoute.name,
          path: '/404',
        );

  static const String name = 'UnknownView';
}

/// generated route for
/// [_i4.HomeView]
class HomeViewRoute extends _i9.PageRouteInfo<void> {
  const HomeViewRoute()
      : super(
          HomeViewRoute.name,
          path: '',
        );

  static const String name = 'HomeView';
}

/// generated route for
/// [_i5.AboutView]
class AboutViewRoute extends _i9.PageRouteInfo<void> {
  const AboutViewRoute()
      : super(
          AboutViewRoute.name,
          path: 'about',
        );

  static const String name = 'AboutView';
}

/// generated route for
/// [_i6.ProjectView]
class ProjectViewRoute extends _i9.PageRouteInfo<void> {
  const ProjectViewRoute()
      : super(
          ProjectViewRoute.name,
          path: 'project',
        );

  static const String name = 'ProjectView';
}

/// generated route for
/// [_i7.ContactView]
class ContactViewRoute extends _i9.PageRouteInfo<void> {
  const ContactViewRoute()
      : super(
          ContactViewRoute.name,
          path: 'contact',
        );

  static const String name = 'ContactView';
}

extension RouterStateExtension on _i8.RouterService {
  Future<dynamic> navigateToSplashView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const SplashViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToMainView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const MainViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToUnknownView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const UnknownViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToHomeView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const HomeViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToAboutView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const AboutViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToProjectView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const ProjectViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToContactView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const ContactViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithSplashView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const SplashViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithMainView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const MainViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithUnknownView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const UnknownViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithHomeView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const HomeViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithAboutView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const AboutViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithProjectView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const ProjectViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithContactView(
      {void Function(_i9.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const ContactViewRoute(),
      onFailure: onFailure,
    );
  }
}
