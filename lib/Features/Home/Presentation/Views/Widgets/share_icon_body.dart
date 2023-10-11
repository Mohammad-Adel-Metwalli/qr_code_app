import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class ShareIconBody extends StatelessWidget
{
  const ShareIconBody({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: ConstantColors.babyPowder),
        child: const Center(child: Icon(FontAwesomeIcons.shareFromSquare, color: ConstantColors.luxuryBlue))
    );
  }
}