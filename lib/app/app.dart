import 'package:calculator_app/components/bottom_sheets/notice/notice_sheet.dart';
import 'package:calculator_app/components/dialogs/info_alert/info_alert_dialog.dart';
import 'package:calculator_app/screens/home/home_view.dart';
import 'package:calculator_app/screens/onboard/onboard_view.dart';
import 'package:calculator_app/screens/splash/splash_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: SplashScreen, initial: true),
    MaterialRoute(
      page: OnboardScreen,
    ),
    MaterialRoute(
      page: HomeScreen,
    ), // @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
