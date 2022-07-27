import 'package:flutter/material.dart';
import 'package:flutter_first_project/config/color_config.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final bool forgotButton;
  const TextFieldWidget({
    Key? key,
    required this.hintText,
    required this.prefixIcon,
    required this.forgotButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            blurRadius: 10.0,
            spreadRadius: 1.0,
            offset: Offset(5, 5),
          ),
        ],
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(5),
      child: forgotButton == false
          ? TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  prefixIcon,
                ),
                hintText: hintText,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 10,
                ),
                hintStyle: bodyTextStyle,
                alignLabelWithHint: true,
                border: InputBorder.none,
              ),
              maxLines: 1,
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        prefixIcon,
                      ),
                      hintText: hintText,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 10,
                      ),
                      hintStyle: bodyTextStyle,
                      alignLabelWithHint: true,
                      border: InputBorder.none,
                    ),
                    maxLines: 1,
                  ),
                ),
                Flexible(
                  child: InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('hello'),
                        ),
                      );
                    },
                    child: Text(
                      'Forgot',
                      style: bodyTextStyle.copyWith(color: primaryColor),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
