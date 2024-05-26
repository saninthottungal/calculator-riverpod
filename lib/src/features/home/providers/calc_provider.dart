import 'package:calculator/src/features/home/data/calc_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final calcProvider = NotifierProvider<CalcData, String>(CalcData.new);
