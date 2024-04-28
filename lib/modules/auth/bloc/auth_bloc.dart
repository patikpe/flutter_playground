import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logging/logging.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final _logger = Logger('AuthBloc');

  AuthBloc() : super(AuthState()) {
    on<AuthValidate>(_onAuthValidate);
    on<AuthLogin>(_onAuthLogin);
    on<AuthRegister>(_onAuthRegister);
    on<AuthGuest>(_onAuthGuest);
  }

  FutureOr<void> _onAuthValidate(AuthValidate event, Emitter<AuthState> emit) {}

  FutureOr<void> _onAuthRegister(AuthRegister event, Emitter<AuthState> emit) {}

  FutureOr<void> _onAuthLogin(AuthLogin event, Emitter<AuthState> emit) {}

  FutureOr<void> _onAuthGuest(AuthGuest event, Emitter<AuthState> emit) {}
}
