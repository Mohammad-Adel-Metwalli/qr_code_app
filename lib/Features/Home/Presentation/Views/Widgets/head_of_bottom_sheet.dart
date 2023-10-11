import 'package:flutter/material.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import 'customed_divider.dart';

class HeadOfBottomSheet extends StatelessWidget
{
  const HeadOfBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        const Spacer(),

        const CustomedDivider(),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),

        const Text('Create QR Code', style: TextStyle(fontWeight: FontWeight.bold, color: ConstantColors.luxuryBlue, fontSize: 20)),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),

        const CustomedDivider(),

        const Spacer(),
      ],
    );
  }
}