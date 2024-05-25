import 'package:calculator/src/utils/constants.dart';
import 'package:flutter/material.dart';

class RoundButtonWidget extends StatelessWidget {
  const RoundButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            elevation: 0,
            backgroundColor: AppColors.orange,
            foregroundColor: Colors.white,
            minimumSize: Size(size.width * 0.2, size.width * 0.2),
            textStyle: TextStyle(fontSize: size.width * 0.08)),
        onPressed: () {},
        child: const Text("+"),
      ),
    );
  }
}
