import 'package:calculator/src/features/home/presentation/widgets/round_button_widget.dart';
import 'package:calculator/src/features/home/presentation/widgets/zero_button_widget.dart';
import 'package:calculator/src/utils/constants.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "42*42",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0,
                      ),
                    ),
                    Text(
                      "40522",
                      style: TextStyle(
                        fontSize: 75,
                        fontWeight: FontWeight.w300,
                        letterSpacing: -5,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RoundButtonWidget(
                    text: 'C',
                    backgroundColor: AppColors.white50,
                    isSmall: true,
                    onPressed: () {},
                  ),
                  RoundButtonWidget(
                    text: 'DEL',
                    isSmall: true,
                    backgroundColor: AppColors.white50,
                    onPressed: () {},
                  ),
                  RoundButtonWidget(
                    text: '%',
                    backgroundColor: AppColors.white50,
                    onPressed: () {},
                  ),
                  RoundButtonWidget(
                    text: '÷',
                    backgroundColor: AppColors.orange,
                    isSmall: true,
                    onPressed: () {},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RoundButtonWidget(
                    text: '7',
                    onPressed: () {},
                  ),
                  RoundButtonWidget(
                    text: '8',
                    onPressed: () {},
                  ),
                  RoundButtonWidget(
                    text: '9',
                    onPressed: () {},
                  ),
                  RoundButtonWidget(
                    text: 'x',
                    backgroundColor: AppColors.orange,
                    isSmall: true,
                    onPressed: () {},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RoundButtonWidget(
                    text: '4',
                    onPressed: () {},
                  ),
                  RoundButtonWidget(
                    text: '5',
                    onPressed: () {},
                  ),
                  RoundButtonWidget(
                    text: '6',
                    onPressed: () {},
                  ),
                  RoundButtonWidget(
                    text: '-',
                    backgroundColor: AppColors.orange,
                    onPressed: () {},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RoundButtonWidget(
                    text: '1',
                    onPressed: () {},
                  ),
                  RoundButtonWidget(
                    text: '2',
                    onPressed: () {},
                  ),
                  RoundButtonWidget(
                    text: '3',
                    onPressed: () {},
                  ),
                  RoundButtonWidget(
                    text: '+',
                    backgroundColor: AppColors.orange,
                    onPressed: () {},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ZeroButtonWidget(
                    onPressed: () {},
                  ),
                  RoundButtonWidget(
                    text: '.',
                    onPressed: () {},
                  ),
                  RoundButtonWidget(
                    text: '=',
                    backgroundColor: AppColors.orange,
                    onPressed: () {},
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
