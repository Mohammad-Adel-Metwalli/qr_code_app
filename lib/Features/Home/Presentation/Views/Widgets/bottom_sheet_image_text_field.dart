import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class BottomSheetImageTextField extends StatefulWidget
{
  const BottomSheetImageTextField({super.key, required this.textOfTheField, required this.textEditingController,});
  final String textOfTheField;
  final TextEditingController textEditingController;

  @override
  State<BottomSheetImageTextField> createState() => _BottomSheetImageTextFieldState();
}

class _BottomSheetImageTextFieldState extends State<BottomSheetImageTextField>
{
  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextFormField(
        controller: widget.textEditingController,
        validator: (data)
        {
          if(data!.isEmpty)
          {
            return 'Please enter the image name';
          }
          return null;
        },

        keyboardType: TextInputType.text,
        style: const TextStyle(color: ConstantColors.luxuryBlue, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          label: Text(widget.textOfTheField, style: const TextStyle(color: ConstantColors.luxuryBlue, fontWeight: FontWeight.bold)),
          prefixIcon: const Icon(FontAwesomeIcons.solidFileImage, color: ConstantColors.luxuryBlue),
          enabledBorder: outlineInputBorderOfCreateReceipt(),
          focusedBorder: outlineInputBorderOfCreateReceipt(),
          errorBorder: outlineInputBorderOfCreateReceipt(),
          focusedErrorBorder: outlineInputBorderOfCreateReceipt(),
          fillColor: ConstantColors.luxuryBlue,
          focusColor: ConstantColors.luxuryBlue,
        ),
      ),
    );
  }

  OutlineInputBorder outlineInputBorderOfCreateReceipt() => OutlineInputBorder(borderRadius: BorderRadius.circular(25), borderSide: const BorderSide(color: ConstantColors.luxuryBlue));
}