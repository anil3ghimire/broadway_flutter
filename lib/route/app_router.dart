import 'package:flutter/material.dart';
import 'package:fluttert/models/user_model.dart';
import 'package:fluttert/route/app_routes.dart';
import 'package:fluttert/screens/home_screen.dart';
import 'package:fluttert/screens/kyc_screen.dart';
import 'package:fluttert/screens/main_screen.dart';
import 'package:fluttert/screens/product_screen.dart';
import 'package:fluttert/screens/profile_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: AppRoutes.mainScreen,
        builder: (context, state) => MainScreen(),
      ),
      GoRoute(path: AppRoutes.home, builder: (context, state) => HomeScreen()),
      GoRoute(
        path: AppRoutes.profile,
        builder: (context, state) {
          return ProfileScreen();
        },
      ),
      GoRoute(
        path: AppRoutes.product,
        builder: (context, state) {
          String isLogin = state.extra.toString();
          print('isLogin$isLogin');
          return ProductScreen();
        },
      ),
      GoRoute(
        path: AppRoutes.kyc,

        builder: (context, state) {
          UserModel user = state.extra as UserModel;
          return KycScreen(userModel: user);
        },
      ),
    ],
    errorPageBuilder: (context, state) {
      return MaterialPage(child: Center(child: Text('Page not Found')));
    },
  );
}
