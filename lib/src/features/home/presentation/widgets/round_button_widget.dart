import 'package:calculator/src/utils/constants.dart';
import 'package:flutter/material.dart';

class RoundButtonWidget extends StatelessWidget {
  const RoundButtonWidget({
    super.key,
    required this.text,
    this.backgroundColor,
    this.isSmall = false,
    required this.onPressed,
  });

  final String text;
  final Color? backgroundColor;
  final bool isSmall;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            elevation: 0,
            backgroundColor: backgroundColor ?? AppColors.black50,
            foregroundColor: backgroundColor == AppColors.white50
                ? Colors.black
                : Colors.white,
            minimumSize: Size(size.width * 0.21, size.width * 0.21),
            textStyle: TextStyle(
              fontSize: !isSmall ? size.width * 0.085 : size.width * 0.06,
              fontWeight: isSmall ? FontWeight.w500 : FontWeight.w400,
            )),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
