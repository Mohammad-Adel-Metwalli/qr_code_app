import 'package:flutter/material.dart';
import 'package:training_project/Features/Presentation/Views/Widgets/lottie_qr_code_animation.dart';
import 'package:training_project/Features/Presentation/Views/Widgets/splash_view_loading_indicator.dart';

class SplashViewBodyItems extends StatelessWidget
{
  const SplashViewBodyItems({
    super.key, required this.controller,
  });
  final AnimationController controller;

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        const Spacer(),

        LottieQrCodeAnimation(controller: controller),

        const Text('We Simplify It To You', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),

        const SizedBox(height: 25),

        const SplashViewLoadingIndicator(),

        const Spacer()
      ],
    );
  }
}

