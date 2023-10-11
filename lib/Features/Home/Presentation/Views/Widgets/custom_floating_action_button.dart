import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:training_project/Core/Utils/assets_data.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import 'create_qr_code.dart';

class CustomFloatingActionButton extends StatelessWidget
{
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return FloatingActionButton.extended(
        onPressed: ()
        {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: AssetsData.borderRadius, topRight: AssetsData.borderRadius)),
              builder: (context)
              {
                return const SingleChildScrollView(
                  child: CreateQrCode(),
                );
              }
          );
        },

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        backgroundColor: ConstantColors.luxuryBlue,
        icon: const Icon(FontAwesomeIcons.qrcode, color: ConstantColors.babyPowder),
        label: const Text('Create QR Code', style: TextStyle(fontWeight: FontWeight.bold, color: ConstantColors.babyPowder)),
    );
  }
}