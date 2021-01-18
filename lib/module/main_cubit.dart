import 'package:bloc/bloc.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainState().init());

  void increaseCount() => {emit(state.clone()..count = ++state.count)};

  void reduceCount() => {emit(state.clone()..count = --state.count)};
}
