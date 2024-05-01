import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_playground/l10n/generated/l10n.dart';
import 'package:flutter_playground/modules/login/cubit/login_cubit.dart';
import 'package:flutter_playground/utilities/form_values_enum.dart';
import 'package:go_router/go_router.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
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
                  S.current.login,
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
                          onChanged: (val) {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: FormBuilderTextField(
                          name: FormEnumValues.password.name,
                          decoration: InputDecoration(
                            labelText: S.current.password,
                          ),
                          onChanged: (val) {},
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(S.current.submit),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(S.current.reset_password),
                ),
                ElevatedButton(
                  onPressed: () => context.push('/register'),
                  child: Text(S.current.register),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
