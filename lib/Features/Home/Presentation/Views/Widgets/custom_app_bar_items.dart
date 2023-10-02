import 'package:flutter/material.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class CustomAppBarItems extends StatelessWidget
{
  const CustomAppBarItems({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return const Row(
      children: [
        Spacer(),

        Text('QR Code Generator', style: TextStyle(color: ConstantColors.babyPowder, fontWeight: FontWeight.bold, fontSize: 25)),

        Spacer()
      ],
    );
  }
}