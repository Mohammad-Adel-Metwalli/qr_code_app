import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../../../../Core/Utils/constant_colors.dart';

class SplashViewLoadingIndicator extends StatelessWidget
{
  const SplashViewLoadingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return const SpinKitCircle(color: ConstantColors.luxuryBlue);
  }
}