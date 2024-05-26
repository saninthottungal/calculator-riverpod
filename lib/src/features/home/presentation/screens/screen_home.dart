import 'package:calculator/src/features/home/presentation/widgets/round_button_widget.dart';
import 'package:calculator/src/features/home/presentation/widgets/zero_button_widget.dart';
import 'package:calculator/src/features/home/providers/calc_provider.dart';
import 'package:calculator/src/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScreenHome extends ConsumerWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      "42*42",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0,
                      ),
                    ),
                    Text(
                      ref.watch(calcProvider),
                      style: const TextStyle(
                        fontSize: 75,
                        fontWeight: FontWeight.w300,
                        letterSpacing: -5,
                      ),
                    ),
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RoundButtonWidget(
                    text: 'C',
                    backgroundColor: AppColors.white50,
                    isSmall: true,
                  ),
                  RoundButtonWidget(
                    text: 'DEL',
                    isSmall: true,
                    backgroundColor: AppColors.white50,
                  ),
                  RoundButtonWidget(
                    text: '%',
                    backgroundColor: AppColors.white50,
                  ),
                  RoundButtonWidget(
                    text: '÷',
                    backgroundColor: AppColors.orange,
                    isSmall: true,
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RoundButtonWidget(
                    text: '7',
                  ),
                  RoundButtonWidget(
                    text: '8',
                  ),
                  RoundButtonWidget(
                    text: '9',
                  ),
                  RoundButtonWidget(
                    text: 'x',
                    backgroundColor: AppColors.orange,
                    isSmall: true,
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RoundButtonWidget(
                    text: '4',
                  ),
                  RoundButtonWidget(
                    text: '5',
                  ),
                  RoundButtonWidget(
                    text: '6',
                  ),
                  RoundButtonWidget(
                    text: '-',
                    backgroundColor: AppColors.orange,
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RoundButtonWidget(
                    text: '1',
                  ),
                  RoundButtonWidget(
                    text: '2',
                  ),
                  RoundButtonWidget(
                    text: '3',
                  ),
                  RoundButtonWidget(
                    text: '+',
                    backgroundColor: AppColors.orange,
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ZeroButtonWidget(),
                  RoundButtonWidget(
                    text: '.',
                  ),
                  RoundButtonWidget(
                    text: '=',
                    backgroundColor: AppColors.orange,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
