// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bazar/ui/models/author_model.dart' as _i26;
import 'package:bazar/ui/views/author/author_view.dart' as _i22;
import 'package:bazar/ui/views/authors/authors_view.dart' as _i21;
import 'package:bazar/ui/views/email_verification/email_verification_view.dart'
    as _i8;
import 'package:bazar/ui/views/forget_password_screens/f_p_create_new_password/f_p_create_new_password_view.dart'
    as _i17;
import 'package:bazar/ui/views/forget_password_screens/f_p_success_new_password/f_p_success_new_password_view.dart'
    as _i18;
import 'package:bazar/ui/views/forget_password_screens/f_p_verification_code_email/f_p_verification_code_email_view.dart'
    as _i15;
import 'package:bazar/ui/views/forget_password_screens/f_p_verification_code_phone/f_p_verification_code_phone_view.dart'
    as _i16;
import 'package:bazar/ui/views/forget_password_screens/f_p_w_email/f_p_w_email_view.dart'
    as _i13;
import 'package:bazar/ui/views/forget_password_screens/f_p_w_phone/f_p_w_phone_view.dart'
    as _i14;
import 'package:bazar/ui/views/forget_password_screens/forget_password/forget_password_view.dart'
    as _i12;
import 'package:bazar/ui/views/home/home_view.dart' as _i19;
import 'package:bazar/ui/views/input_phone_number/input_phone_number_view.dart'
    as _i10;
import 'package:bazar/ui/views/onboarding/onboarding_i/onboarding_i_view.dart'
    as _i2;
import 'package:bazar/ui/views/onboarding/onboarding_i_i/onboarding_i_i_view.dart'
    as _i3;
import 'package:bazar/ui/views/onboarding/onboarding_i_i_i/onboarding_i_i_i_view.dart'
    as _i4;
import 'package:bazar/ui/views/page_view/page_view_view.dart' as _i5;
import 'package:bazar/ui/views/phone_verification/phone_verification_view.dart'
    as _i9;
import 'package:bazar/ui/views/sign_in/sign_in_view.dart' as _i6;
import 'package:bazar/ui/views/sign_up/sign_up_view.dart' as _i7;
import 'package:bazar/ui/views/success/success_view.dart' as _i11;
import 'package:bazar/ui/views/tabBar_views/all_authors_tab/all_authors_tab_view.dart'
    as _i24;
import 'package:bazar/ui/views/tabBar_views/all_vendor/all_vendor_view.dart'
    as _i23;
import 'package:bazar/ui/views/vendors/vendors_view.dart' as _i20;
import 'package:flutter/material.dart' as _i25;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i27;

class Routes {
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

  static const homeView = '/home-view';

  static const vendorsView = '/vendors-view';

  static const authorsView = '/authors-view';

  static const authorView = '/author-view';

  static const allVendorView = '/all-vendor-view';

  static const allAuthorsTabView = '/all-authors-tab-view';

  static const all = <String>{
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
    homeView,
    vendorsView,
    authorsView,
    authorView,
    allVendorView,
    allAuthorsTabView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.onboardingIView,
      page: _i2.OnboardingIView,
    ),
    _i1.RouteDef(
      Routes.onboardingIIView,
      page: _i3.OnboardingIIView,
    ),
    _i1.RouteDef(
      Routes.onboardingIIIView,
      page: _i4.OnboardingIIIView,
    ),
    _i1.RouteDef(
      Routes.pageViewView,
      page: _i5.PageViewView,
    ),
    _i1.RouteDef(
      Routes.signInView,
      page: _i6.SignInView,
    ),
    _i1.RouteDef(
      Routes.signUpView,
      page: _i7.SignUpView,
    ),
    _i1.RouteDef(
      Routes.emailVerificationView,
      page: _i8.EmailVerificationView,
    ),
    _i1.RouteDef(
      Routes.phoneVerificationView,
      page: _i9.PhoneVerificationView,
    ),
    _i1.RouteDef(
      Routes.inputPhoneNumberView,
      page: _i10.InputPhoneNumberView,
    ),
    _i1.RouteDef(
      Routes.successView,
      page: _i11.SuccessView,
    ),
    _i1.RouteDef(
      Routes.forgetPasswordView,
      page: _i12.ForgetPasswordView,
    ),
    _i1.RouteDef(
      Routes.fPWEmailView,
      page: _i13.FPWEmailView,
    ),
    _i1.RouteDef(
      Routes.fPWPhoneView,
      page: _i14.FPWPhoneView,
    ),
    _i1.RouteDef(
      Routes.fPVerificationCodeEmailView,
      page: _i15.FPVerificationCodeEmailView,
    ),
    _i1.RouteDef(
      Routes.fPVerificationCodePhoneView,
      page: _i16.FPVerificationCodePhoneView,
    ),
    _i1.RouteDef(
      Routes.fPCreateNewPasswordView,
      page: _i17.FPCreateNewPasswordView,
    ),
    _i1.RouteDef(
      Routes.fPSuccessNewPasswordView,
      page: _i18.FPSuccessNewPasswordView,
    ),
    _i1.RouteDef(
      Routes.homeView,
      page: _i19.HomeView,
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
    _i1.RouteDef(
      Routes.allVendorView,
      page: _i23.AllVendorView,
    ),
    _i1.RouteDef(
      Routes.allAuthorsTabView,
      page: _i24.AllAuthorsTabView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.OnboardingIView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.OnboardingIView(),
        settings: data,
      );
    },
    _i3.OnboardingIIView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.OnboardingIIView(),
        settings: data,
      );
    },
    _i4.OnboardingIIIView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.OnboardingIIIView(),
        settings: data,
      );
    },
    _i5.PageViewView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.PageViewView(),
        settings: data,
      );
    },
    _i6.SignInView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.SignInView(),
        settings: data,
      );
    },
    _i7.SignUpView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.SignUpView(),
        settings: data,
      );
    },
    _i8.EmailVerificationView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.EmailVerificationView(),
        settings: data,
      );
    },
    _i9.PhoneVerificationView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.PhoneVerificationView(),
        settings: data,
      );
    },
    _i10.InputPhoneNumberView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.InputPhoneNumberView(),
        settings: data,
      );
    },
    _i11.SuccessView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.SuccessView(),
        settings: data,
      );
    },
    _i12.ForgetPasswordView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.ForgetPasswordView(),
        settings: data,
      );
    },
    _i13.FPWEmailView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i13.FPWEmailView(),
        settings: data,
      );
    },
    _i14.FPWPhoneView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i14.FPWPhoneView(),
        settings: data,
      );
    },
    _i15.FPVerificationCodeEmailView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i15.FPVerificationCodeEmailView(),
        settings: data,
      );
    },
    _i16.FPVerificationCodePhoneView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i16.FPVerificationCodePhoneView(),
        settings: data,
      );
    },
    _i17.FPCreateNewPasswordView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i17.FPCreateNewPasswordView(),
        settings: data,
      );
    },
    _i18.FPSuccessNewPasswordView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i18.FPSuccessNewPasswordView(),
        settings: data,
      );
    },
    _i19.HomeView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i19.HomeView(),
        settings: data,
      );
    },
    _i20.VendorsView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i20.VendorsView(),
        settings: data,
      );
    },
    _i21.AuthorsView: (data) {
      final args = data.getArgs<AuthorsViewArguments>(nullOk: false);
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i21.AuthorsView(key: args.key, authors: args.authors),
        settings: data,
      );
    },
    _i22.AuthorView: (data) {
      final args = data.getArgs<AuthorViewArguments>(nullOk: false);
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i22.AuthorView(key: args.key, author: args.author),
        settings: data,
      );
    },
    _i23.AllVendorView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i23.AllVendorView(),
        settings: data,
      );
    },
    _i24.AllAuthorsTabView: (data) {
      final args = data.getArgs<AllAuthorsTabViewArguments>(nullOk: false);
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i24.AllAuthorsTabView(key: args.key, authors: args.authors),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class AuthorsViewArguments {
  const AuthorsViewArguments({
    this.key,
    required this.authors,
  });

  final _i25.Key? key;

  final List<_i26.Author> authors;

  @override
  String toString() {
    return '{"key": "$key", "authors": "$authors"}';
  }

  @override
  bool operator ==(covariant AuthorsViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.authors == authors;
  }

  @override
  int get hashCode {
    return key.hashCode ^ authors.hashCode;
  }
}

class AuthorViewArguments {
  const AuthorViewArguments({
    this.key,
    required this.author,
  });

  final _i25.Key? key;

  final _i26.Author author;

  @override
  String toString() {
    return '{"key": "$key", "author": "$author"}';
  }

  @override
  bool operator ==(covariant AuthorViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.author == author;
  }

  @override
  int get hashCode {
    return key.hashCode ^ author.hashCode;
  }
}

class AllAuthorsTabViewArguments {
  const AllAuthorsTabViewArguments({
    this.key,
    required this.authors,
  });

  final _i25.Key? key;

  final List<_i26.Author> authors;

  @override
  String toString() {
    return '{"key": "$key", "authors": "$authors"}';
  }

  @override
  bool operator ==(covariant AllAuthorsTabViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.authors == authors;
  }

  @override
  int get hashCode {
    return key.hashCode ^ authors.hashCode;
  }
}

extension NavigatorStateExtension on _i27.NavigationService {
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

  Future<dynamic> navigateToAuthorsView({
    _i25.Key? key,
    required List<_i26.Author> authors,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.authorsView,
        arguments: AuthorsViewArguments(key: key, authors: authors),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAuthorView({
    _i25.Key? key,
    required _i26.Author author,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.authorView,
        arguments: AuthorViewArguments(key: key, author: author),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAllVendorView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.allVendorView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAllAuthorsTabView({
    _i25.Key? key,
    required List<_i26.Author> authors,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.allAuthorsTabView,
        arguments: AllAuthorsTabViewArguments(key: key, authors: authors),
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

  Future<dynamic> replaceWithAuthorsView({
    _i25.Key? key,
    required List<_i26.Author> authors,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.authorsView,
        arguments: AuthorsViewArguments(key: key, authors: authors),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAuthorView({
    _i25.Key? key,
    required _i26.Author author,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.authorView,
        arguments: AuthorViewArguments(key: key, author: author),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAllVendorView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.allVendorView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAllAuthorsTabView({
    _i25.Key? key,
    required List<_i26.Author> authors,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.allAuthorsTabView,
        arguments: AllAuthorsTabViewArguments(key: key, authors: authors),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
