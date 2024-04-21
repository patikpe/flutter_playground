part of 'setup_bloc.dart';

sealed class SetupEvent extends Equatable {
  const SetupEvent();

  @override
  List<Object> get props => [];
}

class StartSetup extends SetupEvent {}

class StartSetupTest extends SetupEvent {}
