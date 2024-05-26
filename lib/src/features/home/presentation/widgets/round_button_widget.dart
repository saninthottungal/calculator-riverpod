import 'package:calculator/src/features/home/providers/calc_provider.dart';
import 'package:calculator/src/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RoundButtonWidget extends ConsumerWidget {
  const RoundButtonWidget({
    super.key,
    required this.text,
    this.backgroundColor,
    this.isSmall = false,
  });

  final String text;
  final Color? backgroundColor;
  final bool isSmall;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
        onPressed: () {
          ref.read(calcProvider.notifier).compute(text);
        },
        child: Text(text),
      ),
    );
  }
}
