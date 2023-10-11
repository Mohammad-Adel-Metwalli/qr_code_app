import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:training_project/Core/Utils/constant_colors.dart';

class AssetsData
{
  static const String poppinsFont = 'Poppins';
  static Radius borderRadius = const Radius.circular(30);
  static Map<String, Map<Widget, Color>> appsList = {
    'Facebook': {const Icon(FontAwesomeIcons.facebook, color: ConstantColors.luxuryBlue, size: 60): ConstantColors.luxuryBlue},
    'LinkedIn': {const Icon(FontAwesomeIcons.linkedin, color: ConstantColors.cerulean, size: 50): ConstantColors.cerulean},
    'GitHub': {const Icon(FontAwesomeIcons.github, color: ConstantColors.black, size: 60): ConstantColors.black},
    'WhatsApp': {const Icon(FontAwesomeIcons.whatsapp, color: ConstantColors.green, size: 50): ConstantColors.green}
  };

  static Map<Color, Widget> stackedIcons = {
    const Color(0xFF0033AE): const Icon(FontAwesomeIcons.facebook, color: ConstantColors.luxuryBlue, size: 60),
    const Color(0xff007991): const Icon(FontAwesomeIcons.linkedin, color: ConstantColors.cerulean, size: 50),
    const Color(0xff000501): const Icon(FontAwesomeIcons.github, color: ConstantColors.black, size: 60),
    const Color(0xFF55CB61): const Icon(FontAwesomeIcons.whatsapp, color: ConstantColors.green, size: 50)
  };
}