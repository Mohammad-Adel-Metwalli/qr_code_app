import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimatedSnackBarBodyItems extends StatelessWidget
{
  const AnimatedSnackBarBodyItems({
    super.key,
    required this.message,
  });
  final String message;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        const Spacer(),

        Center(
            child: Text(
                message == 'QR Code has been saved to Gallery' ? 'QR Code has been saved to Gallery' : 'Something went wrong',
                style: const TextStyle(fontWeight: FontWeight.bold)
            )
        ),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),

        Icon(message == 'QR Code has been saved to Gallery' ? FontAwesomeIcons.solidCircleCheck : FontAwesomeIcons.solidCircleXmark, color: message == 'QR Code has been saved to Gallery' ? Colors.green : Colors.red),

        const Spacer(),
      ],
    );
  }
}