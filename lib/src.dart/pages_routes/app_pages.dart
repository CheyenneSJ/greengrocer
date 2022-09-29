import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:greengrocer/src.dart/pages/auth/view/sign_in_screen.dart';
import 'package:greengrocer/src.dart/pages/auth/view/sign_up_screen.dart';
import 'package:greengrocer/src.dart/pages/base/base_sreen.dart';
import 'package:greengrocer/src.dart/pages/base/splash/splash_screen.dart';

abstract class AppPages {
  static final pages = <GetPage>[
    GetPage(
      page: () => const SplashScreen(),
      name: PagesRoutes.splashRoute,
    ),
    GetPage(
      page: () => SignInScreen(),
      name: PagesRoutes.signInRoute,
    ),
    GetPage(
      page: () => SignUpScreen(),
      name: PagesRoutes.signUpRoute,
    ),
    GetPage(
      page: () => const BaseScreen(),
      name: PagesRoutes.signUpRoute,
    ),
  ];
}

abstract class PagesRoutes {
  static const String signInRoute = '/signin';
  static const String signUpRoute = '/signup';
  static const String splashRoute = '/splash';
  static const String baseRoute = '/';
}
