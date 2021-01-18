import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'global_state.dart';

class GlobalCubit extends Cubit<GlobalState> {
  GlobalCubit() : super(GlobalState().init());

  void changeBrightness() => {
        emit(state.clone()
          ..brightness = state.brightness == Brightness.dark
              ? Brightness.light
              : Brightness.dark)
      };
}
