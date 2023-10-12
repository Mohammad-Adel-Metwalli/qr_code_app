import 'package:flutter/material.dart';
import 'buttons_of_bottom_sheet.dart';

class BottomOfBottomSheet extends StatelessWidget
{
  const BottomOfBottomSheet({
    super.key, required this.formKey,
  });
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ButtonsBottomSheet(buttonText: 'Cancel', formKey: formKey),

        ButtonsBottomSheet(buttonText: 'Generate', formKey: formKey),
      ],
    );
  }
}