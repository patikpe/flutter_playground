import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logging/logging.dart';

part 'setup_state.dart';

class SetupCubit extends Cubit<SetupState> {
  SetupCubit() : super(const SetupState());

  final _log = Logger('SetupCubit');

  void verifySignedInUser() {
    // var currentUser = null;
    // if (currentUser != null) {
    //   _log.info('User is signed in');
    //   emit(state.copyWith(status: SetupStatus.redirectHomeScreen));
    // } else {
    //   _log.info('User is not signed in');
    //   emit(state.copyWith(status: SetupStatus.redirectLoginScreen));
    // }
  }
}
