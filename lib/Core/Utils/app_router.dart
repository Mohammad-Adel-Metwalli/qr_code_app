import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:training_project/Features/Home/Presentation/Views/home_view.dart';
import 'package:training_project/Features/Presentation/Views/splash_view.dart';

abstract class AppRouter
{
  static final router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const SplashView(),
        ),

        GoRoute(
            path: '/homeView',
            pageBuilder: (context, state)
            {
              return CustomTransitionPage(
                  child: const HomeView(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child)
                  {
                    return FadeTransition(opacity: animation, child: child);
                  }
              );
            }
        ),
      ]
  );
}