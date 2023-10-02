import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieQrCodeAnimation extends StatelessWidget
{
  const LottieQrCodeAnimation({super.key, required this.controller});
  final AnimationController controller;

  @override
  Widget build(BuildContext context)
  {
    return Lottie.asset(
      'Assets/Animations/animation_ln7esofq.json',
      animate: true,
      controller: controller,
      onLoaded: (composition)
      {
        controller.duration = composition.duration;
        controller.forward();
      }
    );
  }
}
