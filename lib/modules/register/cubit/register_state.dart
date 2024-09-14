part of 'register_cubit.dart';

final class RegisterState extends Equatable {
  final AppStatus status;

  const RegisterState({
    this.status = AppStatus.loaded,
  });

  RegisterState copyWith({
    AppStatus? status,
  }) {
    return RegisterState(
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [
        status,
      ];
}
