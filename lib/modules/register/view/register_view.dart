import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_playground/l10n/generated/l10n.dart';
import 'package:flutter_playground/modules/register/cubit/register_cubit.dart';
import 'package:flutter_playground/utilities/form_values_enum.dart';
import 'package:go_router/go_router.dart';

class RegisterView extends StatelessWidget {
  RegisterView({super.key});

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
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
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: FormBuilderTextField(
                              name: FormEnumValues.email.name,
                              decoration: InputDecoration(
                                labelText: S.current.email,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: FormBuilderTextField(
                              name: FormEnumValues.password.name,
                              decoration: InputDecoration(
                                labelText: S.current.password,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: FormBuilderTextField(
                              name: FormEnumValues.confirmPassword.name,
                              decoration: InputDecoration(
                                labelText: S.current.confirm_password,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              _formKey.currentState?.save();

                              context.read<RegisterCubit>().registerNewUser(
                                    _formKey.currentState!
                                        .value[FormEnumValues.email.name],
                                    _formKey.currentState!
                                        .value[FormEnumValues.password.name],
                                  );
                            },
                            child: Text(S.current.submit),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => context.push('/login'),
                      child: Text(S.current.login),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
