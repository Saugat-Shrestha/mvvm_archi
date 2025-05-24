import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:mvvm_architecture/presentation/resources/strings_manager.dart';
import 'package:mvvm_architecture/presentation/views/splash_view/splash_view.dart';

class RoutesName {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBoarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
}

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splashRoute:
      // return MaterialPageRoute(builder: (_) => SplashView());

      //   case RoutesName.individualPrivateNumbersScreen:
      //     if (settings.arguments != null) {
      //       final args = settings.arguments as PrivateNumber;

      //       return MaterialPageRoute(
      //         builder: (_) => IndividualPrivateNumberView(number: args),
      //         settings: RouteSettings(arguments: settings.arguments),
      //       );
      //     }
      //     return MaterialPageRoute(
      //       builder:
      //           (_) =>
      //               const Scaffold(body: Center(child: Text('No Route Defined'))),
      //     );

      default:
        return MaterialPageRoute(
          builder:
              (context) =>
                  const Scaffold(body: Center(child: Text('No Route Defined'))),
        );
    }
  }
}
