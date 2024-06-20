import 'package:my_portfolio_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.locator.dart';

class SplashViewModel extends BaseViewModel{
  final _routerService = locator<RouterService>();

  Future init() async {
     await _routerService.replaceWith( const MainViewRoute());
   }
}