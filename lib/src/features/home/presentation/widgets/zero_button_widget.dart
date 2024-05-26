import 'package:calculator/src/features/home/providers/calc_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../utils/constants.dart';

class ZeroButtonWidget extends ConsumerWidget {
  const ZeroButtonWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: () {
        ref.read(calcProvider.notifier).compute(Calnum.n0);
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(size.width * 0.45, size.width * 0.2),
        backgroundColor: AppColors.black50,
        elevation: 0,
        alignment: Alignment.centerLeft,
        foregroundColor: Colors.white,
        textStyle: TextStyle(
          fontSize: size.width * 0.085,
          fontWeight: FontWeight.w400,
          letterSpacing: 20,
        ),
      ),
      child: const Text(Calnum.n0),
    );
  }
}
