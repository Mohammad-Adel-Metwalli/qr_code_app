import 'dart:io';
import 'dart:ui';
import 'dart:async';
import 'custom_app_bar.dart';
import 'package:share/share.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/rendering.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatefulWidget
{
  const HomeViewBody({
    super.key,
  });

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody>
{
  final String facebookProfileLink = 'https://www.facebook.com/profile.php?id=100048932493274';
  final GlobalKey _qrKey = GlobalKey();
  bool dirExists = false;
  dynamic externalDir = '/storage/emulated/0/Download/qr_code';

  Future<void> shareQrCode() async
  {
    try
    {
      RenderRepaintBoundary boundary = _qrKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
      var image = await boundary.toImage(pixelRatio: 3.0);
      
      final whitePaint = Paint()..color = ConstantColors.babyPowder;
      final recorder = PictureRecorder();
      final canvas = Canvas(recorder, Rect.fromLTWH(0, 0, image.width.toDouble() - 20, image.height.toDouble() - 20));
      canvas.drawRect(Rect.fromLTWH(0, 0, image.width.toDouble() - 20, image.height.toDouble() - 20), whitePaint);
      canvas.drawImage(image, Offset.zero, Paint());
      final picture = recorder.endRecording();
      final img = await picture.toImage(image.width, image.height);

      ByteData? byteData = await img.toByteData(format: ImageByteFormat.png);
      Uint8List pngBytes = byteData!.buffer.asUint8List();

      //Check for duplicate file name to avoid Override
      String fileName = 'qr_code';
      int i = 1;
      while(await File('$externalDir/$fileName.png').exists())
      {
        fileName = 'qr_code_$i';
        i++;
      }

      //Check if Directory Path exists or not
      dirExists = await File(externalDir).exists();
      if(!dirExists)
      {
        await Directory(externalDir).create(recursive: true);
        dirExists = true;
      }

      var status = await Permission.storage.status;
      await Permission.storage.request();

      if(status.isGranted)
      {
        final file = await File('$externalDir/$fileName.png').create();
        await file.writeAsBytes(pngBytes);
        await Share.shareFiles([file.path], text: 'Share QR Code');
      }

      if(!mounted)return;
      const snackBar = SnackBar(content: Text('QR Code saved to gallery'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

    catch(e)
    {
      if(!mounted)return;
      const snackBar = SnackBar(content: Text('Something went wrong!'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      children: [
        const CustomAppBar(),

        Padding(
          padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.250),
          child: Column(
            children: [
              Stack(
                children: [
                  Center(
                    child: RepaintBoundary(
                      key: _qrKey,
                      child: QrImageView(
                        data: facebookProfileLink,
                        version: QrVersions.auto,
                        size: 200,
                        gapless: true,
                      ),
                    ),
                  ),

                  Positioned(
                    top: 150,
                    left: 260,
                    child: InkWell(
                        onTap: shareQrCode,
                        customBorder: const CircleBorder(),
                        child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: ConstantColors.babyPowder),
                            child: const Center(child: Icon(FontAwesomeIcons.shareFromSquare, color: ConstantColors.luxuryBlue))
                        )
                    )
                  ),

                  Positioned(
                      top: 65,
                      left: 172,
                      child: Container(
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(shape: BoxShape.circle, color: ConstantColors.babyPowder),
                          child: const Icon(Icons.facebook_rounded, color: ConstantColors.luxuryBlue, size: 68)
                      )
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}