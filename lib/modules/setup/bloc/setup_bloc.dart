import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'setup_event.dart';
part 'setup_state.dart';

class SetupBloc extends Bloc<SetupEvent, SetupState> {
  SetupBloc() : super(const SetupState()) {
    on<SetupEvent>(_startSetup);
  }

  FutureOr<void> _startSetup(SetupEvent event, Emitter<SetupState> emit) {}
}
