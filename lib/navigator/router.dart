


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_naija_bank/features/auth/login_page.dart';
import 'package:my_naija_bank/features/dashboard/dashboard.dart';
import 'package:my_naija_bank/features/onboarding/splash_screen.dart';
import 'package:my_naija_bank/navigator/route.dart';



class AppRouter {
  static final navKey = GlobalKey<NavigatorState>();

  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteStrings.base:
        return CupertinoPageRoute(builder: (_) => SplashView() );
      case AppRouteStrings.loginPage:
        return CupertinoPageRoute(builder: (_) => LoginPage());
      case AppRouteStrings.dashboardPage:
        return CupertinoPageRoute(builder: (_) => DashboardPage());
      
      default:
        return CupertinoPageRoute(builder: (_) =>SplashView());
    }
  }
}

void navigateToPage(BuildContext context, Widget page) {
  Navigator.push(
    context,
    PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        var tween = Tween(
          begin: begin,
          end: end,
        ).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(position: offsetAnimation, child: child);
      },
    ),
  );
}

void navigateToNextPageWithoutHistory(BuildContext context, String page) {
  Navigator.pushReplacementNamed(context, page);
}

void navigateToPageOutOfNavBar(BuildContext context, Widget page) {
  Navigator.of(
    context,
    rootNavigator: true,
  ).push(MaterialPageRoute(builder: (context) => page));
}
