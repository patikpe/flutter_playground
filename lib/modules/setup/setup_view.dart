import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/modules/setup/cubit/setup_cubit.dart';
import 'package:go_router/go_router.dart';

class SetupView extends StatelessWidget {
  const SetupView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SetupCubit, SetupState>(
      bloc: SetupCubit()..redirectLoginScreen(),
      listener: (context, state) {
        if (state.status == SetupStatus.redirectLoginScreen) {
          context.go("/login");
        }
      },
      child: const Placeholder(),
    );
  }
}
