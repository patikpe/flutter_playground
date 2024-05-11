import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_playground/modules/setup/cubit/setup_cubit.dart';
import 'package:go_router/go_router.dart';

class SetupView extends StatelessWidget {
  const SetupView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SetupCubit(),
      child: BlocListener<SetupCubit, SetupState>(
        listener: (context, state) {
          if (state.status == SetupStatus.redirectLoginScreen) {
            FlutterNativeSplash.remove();
            context.push('/login');
          } else if (state.status == SetupStatus.redirectHomeScreen) {
            FlutterNativeSplash.remove();
            context.push('/home');
          }
        },
        child: Builder(
          builder: (context) {
            SchedulerBinding.instance.addPostFrameCallback((_) {
              context.read<SetupCubit>().redirectLoginScreen();
            });
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
