import 'package:calculator/src/utils/enums.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final operatorProvider = StateProvider<Calc>((ref) => Calc.none);
