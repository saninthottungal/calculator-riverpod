import 'package:calculator/src/utils/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalcData extends Notifier<String> {
  @override
  String build() {
    return Calnum.n0;
  }

  void compute(String value) {
    switch (value) {}
    state == Calnum.n0 ? state = value : state = state + value;
  }
}
