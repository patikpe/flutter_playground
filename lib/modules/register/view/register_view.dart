import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_playground/l10n/generated/l10n.dart';
import 'package:flutter_playground/modules/register/cubit/register_cubit.dart';
import 'package:go_router/go_router.dart';

class RegisterView extends StatelessWidget {
  RegisterView({super.key});

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
            padding: const EdgeInsets.all(20),
            constraints: const BoxConstraints(
              maxHeight: 500,
              maxWidth: 300,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  S.current.register,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                FormBuilder(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FormBuilderTextField(
                        name: 'NAME',
                        onChanged: (val) {},
                      ),
                      FormBuilderTextField(
                        name: 'PASSWORD',
                        onChanged: (val) {},
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: Text(S.current.submit),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () => context.push('/login'),
                  child: Text(S.current.login),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
