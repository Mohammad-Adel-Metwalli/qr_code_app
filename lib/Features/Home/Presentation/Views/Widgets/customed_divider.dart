import 'package:flutter/material.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class CustomedDivider extends StatelessWidget
{
  const CustomedDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.004,
      width: MediaQuery.sizeOf(context).height * 0.1,
      decoration: BoxDecoration(color: ConstantColors.carmine, borderRadius: BorderRadius.circular(25)),
    );
  }
}