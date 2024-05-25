import 'package:calculator/src/features/home/presentation/widgets/round_button_widget.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            RoundButtonWidget(),
          ],
        ),
      ),
    );
  }
}
