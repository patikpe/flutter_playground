part of 'setup_bloc.dart';

enum SetupStatus {
  initial,
  loading,
  loaded,
  error,
}

final class SetupState extends Equatable {
  final SetupStatus status;

  const SetupState({
    this.status = SetupStatus.initial,
  });

  SetupState copyWith({
    SetupStatus? status,
  }) {
    return SetupState(
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [
        status,
      ];
}
