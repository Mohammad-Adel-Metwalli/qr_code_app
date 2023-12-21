import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gradient_ui_widgets/icon/gradient_icon.dart';
import 'package:training_project/Core/Utils/constant_colors.dart';

class AssetsData
{
  static const String poppinsFont = 'Poppins';
  static Radius borderRadius = const Radius.circular(30);
  static double sizeOfIconsChose = 45;
  static Map<String, Map<dynamic, Color>> appsList = {
    'Facebook': {Icon(FontAwesomeIcons.facebook, color: ConstantColors.luxuryBlue, size: sizeOfIconsChose): ConstantColors.luxuryBlue},
    'LinkedIn': {Icon(FontAwesomeIcons.linkedin, color: ConstantColors.cerulean, size: sizeOfIconsChose): ConstantColors.cerulean},
    'GitHub': {Icon(FontAwesomeIcons.github, color: ConstantColors.black, size: sizeOfIconsChose): ConstantColors.black},
    'WhatsApp': {Icon(FontAwesomeIcons.whatsapp, color: ConstantColors.green, size: sizeOfIconsChose): ConstantColors.green},
    'Instagram': {GradientIcon(FontAwesomeIcons.instagram, gradient: const LinearGradient(colors: ConstantColors.instagramIconGradient), size: sizeOfIconsChose): ConstantColors.purpleRed}
  };

  static Map<Color, Widget> stackedIcons = {
    const Color(0xFF0033AE): const Icon(FontAwesomeIcons.facebook, color: ConstantColors.luxuryBlue, size: 60),
    const Color(0xff007991): const Icon(FontAwesomeIcons.linkedin, color: ConstantColors.cerulean, size: 50),
    const Color(0xff000501): const Icon(FontAwesomeIcons.github, color: ConstantColors.black, size: 60),
    const Color(0xFF55CB61): const Icon(FontAwesomeIcons.whatsapp, color: ConstantColors.green, size: 50),
    const Color(0xffC13584): const GradientIcon(FontAwesomeIcons.instagram, gradient: LinearGradient(colors: ConstantColors.instagramIconGradient), size: 50)
  };
}