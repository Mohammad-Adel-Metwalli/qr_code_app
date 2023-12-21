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
    return Ink(
      height: MediaQuery.sizeOf(context).height * 0.2,
      width: MediaQuery.sizeOf(context).width * 0.2,
      decoration: BoxDecoration(color: Colors.transparent, border: Border.all(color: selectedIndex ? ConstantColors.redOrange : Colors.transparent, width: 4), shape: BoxShape.circle),

      child: Center(child: appIcon),
    );
  }
}