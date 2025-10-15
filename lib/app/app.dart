import 'package:bazar/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:bazar/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:bazar/ui/views/home/home_view.dart';

import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:bazar/ui/views/onboarding/onboarding_i/onboarding_i_view.dart';
import 'package:bazar/ui/views/onboarding/onboarding_i_i/onboarding_i_i_view.dart';
import 'package:bazar/ui/views/onboarding/onboarding_i_i_i/onboarding_i_i_i_view.dart';
import 'package:bazar/ui/views/page_view/page_view_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),

    MaterialRoute(page: OnboardingIView),
    MaterialRoute(page: OnboardingIIView),
    MaterialRoute(page: OnboardingIIIView),
    MaterialRoute(page: PageViewView),
// @stacked-route
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
