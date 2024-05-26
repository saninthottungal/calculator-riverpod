import 'package:calculator/src/utils/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalcData extends Notifier<String> {
  @override
  String build() {
    return Calnum.n0;
  }

  void compute(String value) {
    switch (value) {
      case Calnum.clear:
        ref.invalidateSelf();
        break;
      case Calnum.delete:
        state = state.substring(0, state.length - 1);
        break;
      case Calnum.percent:
        //TODO add percent calculation
        break;
      case Calnum.div:
        div();
        break;
      case Calnum.mult:
        mult();
        break;
      case Calnum.sub:
        sub();
        break;
      case Calnum.add:
        addf();
        break;
      case Calnum.equal:
        equate();
        break;
      default:
        state == Calnum.n0 ? state = value : state = state + value;
    }
  }

  void div() {}

  void mult() {}

  void sub() {}

  void addf() {}

  void equate() {}
}
