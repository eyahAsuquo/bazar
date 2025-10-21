// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bazar/ui/views/author/author_view.dart' as _i22;
import 'package:bazar/ui/views/authors/authors_view.dart' as _i21;
import 'package:bazar/ui/views/email_verification/email_verification_view.dart'
    as _i9;
import 'package:bazar/ui/views/forget_password_screens/f_p_create_new_password/f_p_create_new_password_view.dart'
    as _i18;
import 'package:bazar/ui/views/forget_password_screens/f_p_success_new_password/f_p_success_new_password_view.dart'
    as _i19;
import 'package:bazar/ui/views/forget_password_screens/f_p_verification_code_email/f_p_verification_code_email_view.dart'
    as _i16;
import 'package:bazar/ui/views/forget_password_screens/f_p_verification_code_phone/f_p_verification_code_phone_view.dart'
    as _i17;
import 'package:bazar/ui/views/forget_password_screens/f_p_w_email/f_p_w_email_view.dart'
    as _i14;
import 'package:bazar/ui/views/forget_password_screens/f_p_w_phone/f_p_w_phone_view.dart'
    as _i15;
import 'package:bazar/ui/views/forget_password_screens/forget_password/forget_password_view.dart'
    as _i13;
import 'package:bazar/ui/views/home/home_view.dart' as _i2;
import 'package:bazar/ui/views/input_phone_number/input_phone_number_view.dart'
    as _i11;
import 'package:bazar/ui/views/onboarding/onboarding_i/onboarding_i_view.dart'
    as _i3;
import 'package:bazar/ui/views/onboarding/onboarding_i_i/onboarding_i_i_view.dart'
    as _i4;
import 'package:bazar/ui/views/onboarding/onboarding_i_i_i/onboarding_i_i_i_view.dart'
    as _i5;
import 'package:bazar/ui/views/page_view/page_view_view.dart' as _i6;
import 'package:bazar/ui/views/phone_verification/phone_verification_view.dart'
    as _i10;
import 'package:bazar/ui/views/sign_in/sign_in_view.dart' as _i7;
import 'package:bazar/ui/views/sign_up/sign_up_view.dart' as _i8;
import 'package:bazar/ui/views/success/success_view.dart' as _i12;
import 'package:bazar/ui/views/vendors/vendors_view.dart' as _i20;
import 'package:flutter/material.dart' as _i23;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i24;

class Routes {
  static const homeView = '/home-view';

  static const onboardingIView = '/onboarding-iView';

  static const onboardingIIView = '/onboarding-ii-view';

  static const onboardingIIIView = '/onboarding-ii-iView';

  static const pageViewView = '/page-view-view';

  static const signInView = '/sign-in-view';

  static const signUpView = '/sign-up-view';

  static const emailVerificationView = '/email-verification-view';

  static const phoneVerificationView = '/phone-verification-view';

  static const inputPhoneNumberView = '/input-phone-number-view';

  static const successView = '/success-view';

  static const forgetPasswordView = '/forget-password-view';

  static const fPWEmailView = '/f-pw-email-view';

  static const fPWPhoneView = '/f-pw-phone-view';

  static const fPVerificationCodeEmailView = '/f-pverification-code-email-view';

  static const fPVerificationCodePhoneView = '/f-pverification-code-phone-view';

  static const fPCreateNewPasswordView = '/f-pcreate-new-password-view';

  static const fPSuccessNewPasswordView = '/f-psuccess-new-password-view';

  static const vendorsView = '/vendors-view';

  static const authorsView = '/authors-view';

  static const authorView = '/author-view';

  static const all = <String>{
    homeView,
    onboardingIView,
    onboardingIIView,
    onboardingIIIView,
    pageViewView,
    signInView,
    signUpView,
    emailVerificationView,
    phoneVerificationView,
    inputPhoneNumberView,
    successView,
    forgetPasswordView,
    fPWEmailView,
    fPWPhoneView,
    fPVerificationCodeEmailView,
    fPVerificationCodePhoneView,
    fPCreateNewPasswordView,
    fPSuccessNewPasswordView,
    vendorsView,
    authorsView,
    authorView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.onboardingIView,
      page: _i3.OnboardingIView,
    ),
    _i1.RouteDef(
      Routes.onboardingIIView,
      page: _i4.OnboardingIIView,
    ),
    _i1.RouteDef(
      Routes.onboardingIIIView,
      page: _i5.OnboardingIIIView,
    ),
    _i1.RouteDef(
      Routes.pageViewView,
      page: _i6.PageViewView,
    ),
    _i1.RouteDef(
      Routes.signInView,
      page: _i7.SignInView,
    ),
    _i1.RouteDef(
      Routes.signUpView,
      page: _i8.SignUpView,
    ),
    _i1.RouteDef(
      Routes.emailVerificationView,
      page: _i9.EmailVerificationView,
    ),
    _i1.RouteDef(
      Routes.phoneVerificationView,
      page: _i10.PhoneVerificationView,
    ),
    _i1.RouteDef(
      Routes.inputPhoneNumberView,
      page: _i11.InputPhoneNumberView,
    ),
    _i1.RouteDef(
      Routes.successView,
      page: _i12.SuccessView,
    ),
    _i1.RouteDef(
      Routes.forgetPasswordView,
      page: _i13.ForgetPasswordView,
    ),
    _i1.RouteDef(
      Routes.fPWEmailView,
      page: _i14.FPWEmailView,
    ),
    _i1.RouteDef(
      Routes.fPWPhoneView,
      page: _i15.FPWPhoneView,
    ),
    _i1.RouteDef(
      Routes.fPVerificationCodeEmailView,
      page: _i16.FPVerificationCodeEmailView,
    ),
    _i1.RouteDef(
      Routes.fPVerificationCodePhoneView,
      page: _i17.FPVerificationCodePhoneView,
    ),
    _i1.RouteDef(
      Routes.fPCreateNewPasswordView,
      page: _i18.FPCreateNewPasswordView,
    ),
    _i1.RouteDef(
      Routes.fPSuccessNewPasswordView,
      page: _i19.FPSuccessNewPasswordView,
    ),
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.vendorsView,
      page: _i20.VendorsView,
    ),
    _i1.RouteDef(
      Routes.authorsView,
      page: _i21.AuthorsView,
    ),
    _i1.RouteDef(
      Routes.authorView,
      page: _i22.AuthorView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.OnboardingIView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.OnboardingIView(),
        settings: data,
      );
    },
    _i4.OnboardingIIView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.OnboardingIIView(),
        settings: data,
      );
    },
    _i5.OnboardingIIIView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.OnboardingIIIView(),
        settings: data,
      );
    },
    _i6.PageViewView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.PageViewView(),
        settings: data,
      );
    },
    _i7.SignInView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.SignInView(),
        settings: data,
      );
    },
    _i8.SignUpView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.SignUpView(),
        settings: data,
      );
    },
    _i9.EmailVerificationView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.EmailVerificationView(),
        settings: data,
      );
    },
    _i10.PhoneVerificationView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.PhoneVerificationView(),
        settings: data,
      );
    },
    _i11.InputPhoneNumberView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.InputPhoneNumberView(),
        settings: data,
      );
    },
    _i12.SuccessView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.SuccessView(),
        settings: data,
      );
    },
    _i13.ForgetPasswordView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i13.ForgetPasswordView(),
        settings: data,
      );
    },
    _i14.FPWEmailView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i14.FPWEmailView(),
        settings: data,
      );
    },
    _i15.FPWPhoneView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i15.FPWPhoneView(),
        settings: data,
      );
    },
    _i16.FPVerificationCodeEmailView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i16.FPVerificationCodeEmailView(),
        settings: data,
      );
    },
    _i17.FPVerificationCodePhoneView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i17.FPVerificationCodePhoneView(),
        settings: data,
      );
    },
    _i18.FPCreateNewPasswordView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i18.FPCreateNewPasswordView(),
        settings: data,
      );
    },
    _i19.FPSuccessNewPasswordView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i19.FPSuccessNewPasswordView(),
        settings: data,
      );
    },
    _i20.VendorsView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i20.VendorsView(),
        settings: data,
      );
    },
    _i21.AuthorsView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i21.AuthorsView(),
        settings: data,
      );
    },
    _i22.AuthorView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i22.AuthorView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

extension NavigatorStateExtension on _i24.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOnboardingIView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.onboardingIView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOnboardingIIView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.onboardingIIView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOnboardingIIIView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.onboardingIIIView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPageViewView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.pageViewView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSignInView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.signInView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSignUpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.signUpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToEmailVerificationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.emailVerificationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPhoneVerificationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.phoneVerificationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToInputPhoneNumberView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.inputPhoneNumberView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSuccessView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.successView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToForgetPasswordView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.forgetPasswordView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFPWEmailView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.fPWEmailView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFPWPhoneView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.fPWPhoneView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFPVerificationCodeEmailView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.fPVerificationCodeEmailView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFPVerificationCodePhoneView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.fPVerificationCodePhoneView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFPCreateNewPasswordView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.fPCreateNewPasswordView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFPSuccessNewPasswordView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.fPSuccessNewPasswordView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToVendorsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.vendorsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAuthorsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.authorsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAuthorView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.authorView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOnboardingIView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.onboardingIView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOnboardingIIView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.onboardingIIView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOnboardingIIIView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.onboardingIIIView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPageViewView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.pageViewView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSignInView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.signInView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSignUpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.signUpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithEmailVerificationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.emailVerificationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPhoneVerificationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.phoneVerificationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithInputPhoneNumberView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.inputPhoneNumberView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSuccessView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.successView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithForgetPasswordView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.forgetPasswordView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFPWEmailView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.fPWEmailView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFPWPhoneView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.fPWPhoneView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFPVerificationCodeEmailView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.fPVerificationCodeEmailView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFPVerificationCodePhoneView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.fPVerificationCodePhoneView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFPCreateNewPasswordView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.fPCreateNewPasswordView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFPSuccessNewPasswordView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.fPSuccessNewPasswordView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithVendorsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.vendorsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAuthorsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.authorsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAuthorView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.authorView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
