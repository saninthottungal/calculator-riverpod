import 'package:calculator/src/features/home/providers/value_provider.dart';
import 'package:calculator/src/utils/constants.dart';
import 'package:calculator/src/utils/enums.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:function_tree/function_tree.dart';

class CalcData extends Notifier<String> {
  @override
  String build() {
    return Calnum.n0;
  }

  void compute(String value) {
    final operator = ref.read(operatorProvider);

    switch (value) {
      case Calnum.clear:
        ref.invalidateSelf();
        break;
      case Calnum.delete:
        state.length <= 1
            ? ref.invalidateSelf()
            : state = state.substring(0, state.length - 1);
        break;
      case Calnum.percent:
        percent();
        break;
      case Calnum.div:
        if (operator == Calc.div) return;
        if (operator != Calc.none) {
          state = state.substring(0, state.length - 1);
        }
        ref.read(operatorProvider.notifier).state = Calc.div;
        div();
        break;
      case Calnum.mult:
        if (operator == Calc.mult) return;
        if (operator != Calc.none) {
          state = state.substring(0, state.length - 1);
        }
        ref.read(operatorProvider.notifier).state = Calc.mult;
        mult();
        break;
      case Calnum.sub:
        if (operator == Calc.sub) return;
        if (operator != Calc.none) {
          state = state.substring(0, state.length - 1);
        }
        ref.read(operatorProvider.notifier).state = Calc.sub;
        sub();
        break;
      case Calnum.add:
        if (operator == Calc.add) return;
        if (operator != Calc.none) {
          state = state.substring(0, state.length - 1);
        }
        ref.read(operatorProvider.notifier).state = Calc.add;
        addf();
        break;
      case Calnum.equal:
        equate();
        break;
      default:
        ref.read(operatorProvider.notifier).state = Calc.none;
        state == Calnum.n0 ? state = value : state = state + value;
    }
  }

  void div() {
    state = state + Calnum.div;
  }

  void mult() {
    state = state + Calnum.mult;
  }

  void sub() {
    state = state + Calnum.sub;
  }

  void addf() {
    state = state + Calnum.add;
  }

  void equate() {
    final value = state.interpret();
    num parsedValue;
    if (value % 1 != 0) {
      parsedValue = value.toDouble();
    } else {
      parsedValue = value.toInt();
    }
    state = parsedValue.toString();
  }

  void percent() {}
}
