part of 'global_cubit.dart';

class GlobalState {
  Brightness brightness;
  GlobalState init() {
    return GlobalState()..brightness = Brightness.light;
  }

  GlobalState clone() {
    return GlobalState()..brightness = brightness;
  }

  GlobalState changeBrightness() {
    return GlobalState()..brightness = Brightness.dark;
  }
}
