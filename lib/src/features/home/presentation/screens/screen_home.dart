import 'package:calculator/src/features/home/presentation/widgets/round_button_widget.dart';
import 'package:calculator/src/utils/constants.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RoundButtonWidget(text: '7'),
                  RoundButtonWidget(text: '8'),
                  RoundButtonWidget(text: '9'),
                  RoundButtonWidget(
                    text: 'x',
                    backgroundColor: AppColors.orange,
                    isSmall: true,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RoundButtonWidget(text: '4'),
                  RoundButtonWidget(text: '5'),
                  RoundButtonWidget(text: '6'),
                  RoundButtonWidget(
                    text: '-',
                    backgroundColor: AppColors.orange,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RoundButtonWidget(text: '1'),
                  RoundButtonWidget(text: '2'),
                  RoundButtonWidget(text: '3'),
                  RoundButtonWidget(
                    text: '+',
                    backgroundColor: AppColors.orange,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RoundButtonWidget(text: '0'),
                  RoundButtonWidget(text: '0'),
                  RoundButtonWidget(text: '.'),
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
