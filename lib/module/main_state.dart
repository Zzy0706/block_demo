part of 'main_cubit.dart';

class MainState {
  int count;

  MainState init() {
    return MainState()..count = 0;
  }

  MainState clone() {
    return MainState()..count = count;
  }
}
