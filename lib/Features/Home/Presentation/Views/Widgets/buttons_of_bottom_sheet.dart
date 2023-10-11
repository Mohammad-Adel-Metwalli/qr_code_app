import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_project/Features/Home/Presentation/Manager/Cubits/Home_Cubit/home_cubit.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import 'create_qr_code.dart';

class ButtonsBottomSheet extends StatelessWidget
{
  const ButtonsBottomSheet({
    super.key, required this.buttonText,
  });
  final String buttonText;

  @override
  Widget build(BuildContext context)
  {
    return InkWell(
      onTap: ()
      {
        if(buttonText == 'Cancel') {}

        else
        {
          BlocProvider.of<HomeCubit>(context).generateQrCode();
        }

        CreateQrCode.imageText.clear();
        CreateQrCode.linkText.clear();
        Navigator.pop(context);
      },

      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.06,
        width: MediaQuery.sizeOf(context).width * 0.35,
        decoration: BoxDecoration(color: ConstantColors.luxuryBlue, borderRadius: BorderRadius.circular(18)),
        child: Center(child: Text(buttonText == 'Cancel' ? 'Cancel' : 'Generate', style: const TextStyle(color: ConstantColors.babyPowder, fontWeight: FontWeight.bold, fontSize: 16))),
      ),
    );
  }
}