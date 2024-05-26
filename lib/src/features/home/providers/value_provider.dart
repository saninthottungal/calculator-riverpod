import 'package:calculator/src/utils/enums.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final operand1Provider = StateProvider<int>((ref) => 0);

final operand2Provider = StateProvider<int>((ref) => 0);

final operatorProvider = StateProvider<Calc>((ref) => Calc.none);
