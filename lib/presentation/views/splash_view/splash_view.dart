// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:mvvm_architecture/app/app_prefs.dart';
// import 'package:mvvm_architecture/presentation/resources/assets_manager.dart';
// import 'package:mvvm_architecture/presentation/resources/color_manager.dart';
// import 'package:mvvm_architecture/presentation/resources/routes_manager.dart';

// class SplashView extends StatefulWidget {
//   const SplashView({Key? key}) : super(key: key);

//   @override
//   _SplashViewState createState() => _SplashViewState();
// }

// class _SplashViewState extends State<SplashView> {
//   Timer? _timer;
//   AppPreferences _appPreferences = instance<AppPreferences>();

//   _startDelay() {
//     _timer = Timer(Duration(seconds: 2), _goNext);
//   }

//   _goNext() async {
//     _appPreferences.isUserLoggedIn().then((isUserLoggedIn) => {
//           if (isUserLoggedIn)
//             {
//               // navigate to main screen
//               Navigator.pushReplacementNamed(context, RoutesName.mainRoute)
//             }
//           else
//             {
//               _appPreferences
//                   .isOnBoardingScreenViewed()
//                   .then((isOnBoardingScreenViewed) => {
//                         if (isOnBoardingScreenViewed)
//                           {
//                             Navigator.pushReplacementNamed(
//                                 context, RoutesName.loginRoute)
//                           }
//                         else
//                           {
//                             Navigator.pushReplacementNamed(
//                                 context, RoutesName.onBoardingRoute)
//                           }
//                       })
//             }
//         });
//   }

//   @override
//   void initState() {
//     super.initState();
//     _startDelay();
//   }

//   @override
//   void dispose() {
//     _timer?.cancel();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: ColorManager.primary,
//       body: Center(
//         child: Image(
//           image: AssetImage(ImageAssets.splashLogo),
//         ),
//       ),
//     );
//   }
// }
