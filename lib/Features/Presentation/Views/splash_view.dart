import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:training_project/Core/Utils/constant_colors.dart';
import 'Widgets/splash_view_body.dart';

class SplashView extends StatefulWidget
{
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with SingleTickerProviderStateMixin
{
  late AnimationController controller;

  @override
  void initState()
  {
    super.initState();
    controller = AnimationController(vsync: this);
    navigateToHomeView();
  }

  void navigateToHomeView()
  {
    Future.delayed(
      const Duration(seconds: 5),
        ()
        {
          GoRouter.of(context).replace('/homeView');
        }
    );
  }

  @override
  void dispose()
  {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: ConstantColors.teaGreen,
      body: SplashViewBody(controller: controller),
    );
  }
}