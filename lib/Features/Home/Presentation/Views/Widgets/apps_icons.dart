import 'package:flutter/material.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class AppsIcons extends StatelessWidget
{
  const AppsIcons({
    super.key,
    required this.appIcon, required this.selectedIndex,
  });
  final dynamic appIcon;
  final bool selectedIndex;

  @override
  Widget build(BuildContext context)
  {
    return CircleAvatar(
        radius: MediaQuery.sizeOf(context).height * 0.045,
        backgroundColor: selectedIndex ? ConstantColors.bronze: ConstantColors.babyPowder,
        child: CircleAvatar(
          backgroundColor: ConstantColors.babyPowder,
          radius: MediaQuery.sizeOf(context).height * 0.04,
          child: appIcon,
        )
    );
  }
}