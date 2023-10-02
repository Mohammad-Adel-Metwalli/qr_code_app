import 'package:flutter/material.dart';
import 'package:training_project/Features/Presentation/Views/Widgets/splash_view_body_items.dart';

class SplashViewBody extends StatelessWidget
{
  const SplashViewBody({
    super.key, required this.controller,
  });
  final AnimationController controller;

  @override
  Widget build(BuildContext context)
  {
    return SplashViewBodyItems(controller: controller);
  }
}