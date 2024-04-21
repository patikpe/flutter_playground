import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/modules/setup/bloc/setup_bloc.dart';

class SetupView extends StatelessWidget {
  const SetupView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SetupBloc()..add(StartSetup()),
      child: const _SetupView(),
    );
  }
}

class _SetupView extends StatelessWidget {
  const _SetupView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SetupBloc, SetupState>(
      builder: (context, state) {
        return MaterialButton(
            onPressed: () {
              context.read<SetupBloc>().add(StartSetupTest());
            },
            child: const SizedBox(
              height: 200,
              width: 200,
              child: Placeholder(),
            ));
      },
    );
  }
}
