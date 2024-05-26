import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';

class ZeroButtonWidget extends StatelessWidget {
  const ZeroButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: () {},
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
      child: const Text("0"),
    );
  }
}
