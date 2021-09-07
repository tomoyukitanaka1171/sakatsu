import 'package:flutter_riverpod/flutter_riverpod.dart';

final sliderProvider = StateNotifierProvider<SliderController, double>(
  (ref) => SliderController(),
);

class SliderController extends StateNotifier<double> {
  SliderController() : super(0);
  void changeState(newState) => state = newState;
}
