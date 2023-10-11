import 'package:flutter/material.dart';
import 'buttons_of_bottom_sheet.dart';

class BottomOfBottomSheet extends StatelessWidget
{
  const BottomOfBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ButtonsBottomSheet(buttonText: 'Cancel'),

        ButtonsBottomSheet(buttonText: 'Generate'),
      ],
    );
  }
}