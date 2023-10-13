import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:training_project/Core/Utils/constant_colors.dart';
import 'package:training_project/Features/Home/Data/Models/qr_code_details_model.dart';

class QrCodeImage extends StatelessWidget
{
  const QrCodeImage({
    super.key,
    required GlobalKey<State<StatefulWidget>> qrKey, required this.linkOfQr,
  }) : _qrKey = qrKey;

  final GlobalKey<State<StatefulWidget>> _qrKey;
  final String? linkOfQr;

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.28,
        child: RepaintBoundary(
          key: _qrKey,
          child: QrImageView(
            data: linkOfQr == null ? '' : (linkOfQr!.startsWith('+') ? 'wa.me/$linkOfQr' : linkOfQr!),
            eyeStyle: QrEyeStyle(color: QrCodeDetailsModel.qrCodeColor ?? ConstantColors.black, eyeShape: QrEyeShape.square),
            dataModuleStyle: QrDataModuleStyle(color: QrCodeDetailsModel.qrCodeColor ?? ConstantColors.black, dataModuleShape: QrDataModuleShape.square),
            version: QrVersions.auto,
            size: MediaQuery.sizeOf(context).height * 0.25,
            gapless: true,
          ),
        ),
      ),
    );
  }
}