import 'package:calculator_app/app/app.locator.dart';
import 'package:calculator_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashViewModel extends BaseViewModel {
  NavigationService navigationService = locator<NavigationService>();

  void onReady() {
    Future.delayed(const Duration(seconds: 3), () {
      navigationService.replaceWithHomeScreen();
    });
  }
}
