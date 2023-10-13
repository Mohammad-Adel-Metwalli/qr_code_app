import 'dart:io';
import 'dart:ui';
import 'dart:async';
import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_project/Features/Home/Presentation/Views/Widgets/qr_code_image.dart';
import 'package:training_project/Features/Home/Presentation/Views/Widgets/share_icon.dart';
import '../../Manager/Cubits/Home_Cubit/home_cubit.dart';
import 'animated_snack_bar_body.dart';
import 'app_icon.dart';
import 'custom_app_bar.dart';
import 'package:share/share.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/rendering.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import 'package:permission_handler/permission_handler.dart';

class HomeViewBody extends StatefulWidget
{
  const HomeViewBody({super.key,});

  static String fileName1 = '';

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody>
{
  final GlobalKey _qrKey = GlobalKey();
  bool dirExists = false;
  dynamic externalDir = '/storage/emulated/0/Pictures';
  String fileName = HomeViewBody.fileName1;
  String captionText = '';

  Future<void> shareQrCode() async
  {
    try
    {
      RenderRepaintBoundary boundary = _qrKey.currentContext!
          .findRenderObject() as RenderRepaintBoundary;
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
      int i = 1;
      while (await File('$externalDir/$fileName.png').exists())
      {
        fileName = '$fileName($i)';
        i++;
      }

      //Check if Directory Path exists or not
      dirExists = await File(externalDir).exists();
      if (!dirExists)
      {
        await Directory(externalDir).create(recursive: true);
        dirExists = true;
      }

      var status = await Permission.storage.status;
      await Permission.storage.request();

      if (status.isGranted)
      {
        final file = await File('$externalDir/$fileName.png').create();
        await file.writeAsBytes(pngBytes);
        await Share.shareFiles([file.path], text: captionText);
      }

      if (!mounted) return;
      AnimatedSnackBar(
          builder: (context)
          {
            return const AnimatedSnackBarBody(message: 'QR Code has been saved to Gallery');
          }
      ).show(context);
    }

    catch (e)
    {
      if (!mounted) return;
      AnimatedSnackBar(
          builder: (context)
          {
            return const AnimatedSnackBarBody(message: 'Something went wrong');
          }
      ).show(context);
    }
  }

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      children: [
        const CustomAppBar(),

        BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state)
          {
            String? qrLink = BlocProvider.of<HomeCubit>(context).linkOfQr;
            captionText = BlocProvider.of<HomeCubit>(context).nameOfImage ?? '';
            Color? qrColor = BlocProvider.of<HomeCubit>(context).colorOfQrCode;

            return Padding(
              padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.2),
              child: Column(
                children: [
                  Stack(
                    children: [
                      QrCodeImage(qrKey: _qrKey, linkOfQr: qrLink),

                      qrLink != null ? ShareIcon(shareQrCode: shareQrCode) : const SizedBox.shrink(),

                      qrColor != null ? AppIcon(qrColor: qrColor) : const SizedBox.shrink()
                    ],
                  )
                ],
              ),
            );
          },
        )
      ],
    );
  }
}