import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_open_task/src/pages/name_screen/cubit/name_screen_state.dart';

class NameScreenCubit extends Cubit<NameScreenState> {
  NameScreenCubit() : super(NameScreenState.initial());

  void updateName(String name) {
    emit(state.copyWith(name: name));
  }

  Future<void> continueButtonPressed() async {
    emit(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(seconds: 2));
    emit(state.copyWith(isLoading: false, isNavigate: true));
  }
}
