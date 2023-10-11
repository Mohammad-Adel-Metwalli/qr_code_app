import 'package:flutter/material.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import 'animated_snack_bar_body_items.dart';

class AnimatedSnackBarBody extends StatelessWidget
{
  const AnimatedSnackBarBody({
    super.key, required this.message,
  });
  final String message;

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.065,
        width: MediaQuery.sizeOf(context).width * 0.85,
        decoration: BoxDecoration(color: ConstantColors.babyPowder, borderRadius: BorderRadius.circular(16)),
        child: AnimatedSnackBarBodyItems(message: message),
      ),
    );
  }
}