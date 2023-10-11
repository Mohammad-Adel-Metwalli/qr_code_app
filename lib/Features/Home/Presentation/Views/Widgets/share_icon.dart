import 'package:flutter/material.dart';
import 'package:training_project/Features/Home/Presentation/Views/Widgets/share_icon_body.dart';

class ShareIcon extends StatelessWidget
{
  const ShareIcon({super.key, required this.shareQrCode});
  final void Function()? shareQrCode;

  @override
  Widget build(BuildContext context)
  {
    return Positioned(
        top: MediaQuery.sizeOf(context).height * 0.195,
        left: MediaQuery.sizeOf(context).width * 0.64,
        child: InkWell(
            onTap: shareQrCode,
            customBorder: const CircleBorder(),
            child: const ShareIconBody()
        )
    );
  }
}