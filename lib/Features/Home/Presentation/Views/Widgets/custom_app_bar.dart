import 'package:flutter/material.dart';
import '../../../../../Core/Utils/assets_data.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import 'custom_app_bar_items.dart';

class CustomAppBar extends StatelessWidget
{
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.110,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomRight: AssetsData.borderRadius, bottomLeft: AssetsData.borderRadius),
          color: ConstantColors.luxuryBlue
      ),

      child: const Center(
        child: CustomAppBarItems(),
      ),
    );
  }
}