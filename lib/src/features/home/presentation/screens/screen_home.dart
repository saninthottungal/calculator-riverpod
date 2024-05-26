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
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  reverse: true,
                  child: Text(
                    ref.watch(calcProvider),
                    style: const TextStyle(
                      fontSize: 75,
                      fontWeight: FontWeight.w300,
                      letterSpacing: -5,
                    ),
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RoundButtonWidget(
                    text: Calnum.clear,
                    backgroundColor: AppColors.white50,
                    isSmall: true,
                  ),
                  RoundButtonWidget(
                    text: Calnum.delete,
                    isSmall: true,
                    backgroundColor: AppColors.white50,
                  ),
                  RoundButtonWidget(
                    text: Calnum.percent,
                    backgroundColor: AppColors.white50,
                  ),
                  RoundButtonWidget(
                    text: Calnum.div,
                    backgroundColor: AppColors.orange,
                    isSmall: true,
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RoundButtonWidget(
                    text: Calnum.n7,
                  ),
                  RoundButtonWidget(
                    text: Calnum.n8,
                  ),
                  RoundButtonWidget(
                    text: Calnum.n9,
                  ),
                  RoundButtonWidget(
                    text: Calnum.mult,
                    backgroundColor: AppColors.orange,
                    isSmall: true,
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RoundButtonWidget(
                    text: Calnum.n4,
                  ),
                  RoundButtonWidget(
                    text: Calnum.n5,
                  ),
                  RoundButtonWidget(
                    text: Calnum.n6,
                  ),
                  RoundButtonWidget(
                    text: Calnum.sub,
                    backgroundColor: AppColors.orange,
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RoundButtonWidget(
                    text: Calnum.n1,
                  ),
                  RoundButtonWidget(
                    text: Calnum.n2,
                  ),
                  RoundButtonWidget(
                    text: Calnum.n3,
                  ),
                  RoundButtonWidget(
                    text: Calnum.add,
                    backgroundColor: AppColors.orange,
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ZeroButtonWidget(),
                  RoundButtonWidget(
                    text: Calnum.dot,
                  ),
                  RoundButtonWidget(
                    text: Calnum.equal,
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
