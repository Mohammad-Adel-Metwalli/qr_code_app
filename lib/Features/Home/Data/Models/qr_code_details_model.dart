import 'package:flutter/material.dart';
import 'package:training_project/Features/Home/Presentation/Views/Widgets/create_qr_code.dart';

class QrCodeDetailsModel
{
  static Color? qrCodeColor;
  void setQrCodeColor(Color qrColor) => qrCodeColor = qrColor;

  String getLink() => CreateQrCode.linkText.text;
  String getTheNameOfImage() => CreateQrCode.imageText.text;
  static Color? getQrCodeColor() => qrCodeColor;
}