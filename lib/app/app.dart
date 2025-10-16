import 'package:bazar/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:bazar/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:bazar/ui/views/home/home_view.dart';

import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:bazar/ui/views/onboarding/onboarding_i/onboarding_i_view.dart';
import 'package:bazar/ui/views/onboarding/onboarding_i_i/onboarding_i_i_view.dart';
import 'package:bazar/ui/views/onboarding/onboarding_i_i_i/onboarding_i_i_i_view.dart';
import 'package:bazar/ui/views/page_view/page_view_view.dart';
import 'package:bazar/ui/views/sign_in/sign_in_view.dart';
import 'package:bazar/ui/views/sign_up/sign_up_view.dart';
import 'package:bazar/ui/views/email_verification/email_verification_view.dart';
import 'package:bazar/ui/views/phone_verification/phone_verification_view.dart';
import 'package:bazar/ui/views/input_phone_number/input_phone_number_view.dart';
import 'package:bazar/ui/views/success/success_view.dart';
import 'package:bazar/ui/views/forget_password_screens/forget_password/forget_password_view.dart';
import 'package:bazar/ui/views/forget_password_screens/f_p_w_email/f_p_w_email_view.dart';
import 'package:bazar/ui/views/forget_password_screens/f_p_w_phone/f_p_w_phone_view.dart';
import 'package:bazar/ui/views/forget_password_screens/f_p_verification_code_email/f_p_verification_code_email_view.dart';
import 'package:bazar/ui/views/forget_password_screens/f_p_verification_code_phone/f_p_verification_code_phone_view.dart';
import 'package:bazar/ui/views/forget_password_screens/f_p_create_new_password/f_p_create_new_password_view.dart';
import 'package:bazar/ui/views/forget_password_screens/f_p_success_new_password/f_p_success_new_password_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),

    MaterialRoute(page: OnboardingIView),
    MaterialRoute(page: OnboardingIIView),
    MaterialRoute(page: OnboardingIIIView),
    MaterialRoute(page: PageViewView),
    MaterialRoute(page: SignInView),
    MaterialRoute(page: SignUpView),
    MaterialRoute(page: EmailVerificationView),
    MaterialRoute(page: PhoneVerificationView),
    MaterialRoute(page: InputPhoneNumberView),
    MaterialRoute(page: SuccessView),
    MaterialRoute(page: ForgetPasswordView),
    MaterialRoute(page: FPWEmailView),
    MaterialRoute(page: FPWPhoneView),
    MaterialRoute(page: FPVerificationCodeEmailView),
    MaterialRoute(page: FPVerificationCodePhoneView),
    MaterialRoute(page: FPCreateNewPasswordView),
    MaterialRoute(page: FPSuccessNewPasswordView),
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
