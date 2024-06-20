import 'package:my_portfolio_app/services/local/project_service.dart';
import 'package:my_portfolio_app/services/network/url_launcher_service.dart';
import 'package:my_portfolio_app/ui/dialogs/project_details/project_details_dialog.dart';
import 'package:my_portfolio_app/ui/views/contact_view/contactview.dart';

import 'package:my_portfolio_app/ui/views/main_view/main_view.dart';
import 'package:my_portfolio_app/ui/views/splash_view/splash_view.dart';

import 'package:my_portfolio_app/ui/views/unknown_view/unknown_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../ui/views/about_view/aboutview.dart';
import '../ui/views/home_view/homeview.dart';
import '../ui/views/project_view/projectview.dart';
// @stacked-import

@StackedApp(
  routes: [
    CustomRoute(page: SplashView, initial: true),
    CustomRoute(page: MainView,
    children: [
       CustomRoute(path: '', page: HomeView),
       CustomRoute(path: 'about', page: AboutView),
       CustomRoute(path: 'project', page: ProjectView),
      CustomRoute(path:'contact',page: ContactView)
    ]

    ),
    // @stacked-route

    CustomRoute(page: UnknownView, path: '/404'),

    /// When none of the above routes match, redirect to UnknownView
    RedirectRoute(path: '*', redirectTo: '/404'),
  ],
  dependencies: [
    LazySingleton(classType: DialogService),
    LazySingleton(classType: RouterService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: UrlLauncherService),
    LazySingleton(classType: ProjectService)
    // @stacked-service
  ],

  dialogs: [
    StackedDialog(classType: ProjectDetailsDialog)
    // @stacked-dialog
  ],
)
class App {}
