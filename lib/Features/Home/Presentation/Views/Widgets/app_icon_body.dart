import 'package:flutter/material.dart';
import 'package:training_project/Core/Utils/assets_data.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class AppIconBody extends StatelessWidget
{
  const AppIconBody({super.key, required this.qrColor});
  final Color? qrColor;

  @override
  Widget build(BuildContext context)
  {
    return Container(
        height: 70,
        width: 70,
        decoration: const BoxDecoration(shape: BoxShape.circle, color: ConstantColors.babyPowder),
        child: AssetsData.stackedIcons[qrColor] ?? const SizedBox.shrink()
    );
  }
}