import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logging/logging.dart';

part 'setup_state.dart';

class SetupCubit extends Cubit<SetupState> {
  SetupCubit() : super(const SetupState());

  final _log = Logger('SetupCubit');

  void redirectLoginScreen() {
    _log.info('Redirecting to login screen');
    emit(state.copyWith(status: SetupStatus.redirectLoginScreen));
  }
}
