import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/modules/setup/cubit/setup_cubit.dart';
import 'package:go_router/go_router.dart';

class SetupView extends StatefulWidget {
  const SetupView({super.key});

  @override
  State<SetupView> createState() => _SetupViewState();
}

class _SetupViewState extends State<SetupView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SetupCubit(),
      child: BlocListener<SetupCubit, SetupState>(
        listener: (context, state) {
          if (state.status == SetupStatus.redirectLoginScreen) {
            context.go('/login');
          }
        },
        child: Builder(builder: (context) {
          SchedulerBinding.instance.addPostFrameCallback((_) {
            context.read<SetupCubit>().redirectLoginScreen();
          });
          return const Placeholder();
        }),
      ),
    );
  }
}
