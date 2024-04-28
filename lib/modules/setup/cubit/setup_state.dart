part of 'setup_cubit.dart';

enum SetupStatus {
  loading,
  redirectLoginScreen,
  redirectHomeScreen,
}

final class SetupState extends Equatable {
  final SetupStatus status;

  const SetupState({
    this.status = SetupStatus.loading,
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
