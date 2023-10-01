import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(const TrainingProject());
}

class TrainingProject extends StatelessWidget
{
  const TrainingProject({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            height: 100,
            width: 200,
            child: BarcodeWidget(
              data: '',
              barcode: Barcode.qrCode(errorCorrectLevel: BarcodeQRCorrectionLevel.high),
              // drawText: false,
            ),
          ),
        ),
      ),
    );
  }
}


