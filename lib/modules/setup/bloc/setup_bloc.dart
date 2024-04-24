import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_playground/l10n/generated/l10n.dart';
import 'package:logging/logging.dart';

part 'setup_event.dart';
part 'setup_state.dart';

class SetupBloc extends Bloc<SetupEvent, SetupState> {
  final _logger = Logger('SetupBloc');

  SetupBloc() : super(const SetupState()) {
    on<StartSetup>(_startSetup);
    on<StartSetupTest>(_startSetupTest);
  }

  FutureOr<void> _startSetup(StartSetup event, Emitter<SetupState> emit) {
    _logger.info(S.current.test);
  }

  FutureOr<void> _startSetupTest(
      StartSetupTest event, Emitter<SetupState> emit) {
    _logger.info('Starting setup... 12321321');
  }
}
