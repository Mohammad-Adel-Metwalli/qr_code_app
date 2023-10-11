import 'package:flutter/material.dart';
import 'app_icon_body.dart';

class AppIcon extends StatelessWidget
{
  const AppIcon({
    super.key, required this.qrColor,
  });
  final Color? qrColor;

  @override
  Widget build(BuildContext context)
  {
    return Positioned(
        top: MediaQuery.sizeOf(context).height * 0.094,
        left: MediaQuery.sizeOf(context).width * 0.43,
        child: AppIconBody(qrColor: qrColor)
    );
  }
}