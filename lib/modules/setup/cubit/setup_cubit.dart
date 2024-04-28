import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'setup_state.dart';

class SetupCubit extends Cubit<SetupState> {
  SetupCubit() : super(const SetupState());

  void redirectLoginScreen() {
    emit(state.copyWith(status: SetupStatus.loading));
    Future.delayed(const Duration(seconds: 15),
        () => emit(state.copyWith(status: SetupStatus.redirectLoginScreen)));
  }

  void redirectHomeScreen() {
    emit(state.copyWith(status: SetupStatus.redirectHomeScreen));
  }
}
