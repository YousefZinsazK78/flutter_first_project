import 'package:flutter/material.dart';
import 'package:flutter_first_project/config/color_config.dart';

class ButtonWidget extends StatelessWidget {
  final String buttonText;
  const ButtonWidget({
    Key? key,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      height: 45,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            primaryColor,
            secondaryColor,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            buttonText,
            style: bodyTextStyle.copyWith(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          const Icon(
            Icons.arrow_forward_rounded,
            color: Colors.white,
            size: 18,
          )
        ],
      ),
    );
  }
}
