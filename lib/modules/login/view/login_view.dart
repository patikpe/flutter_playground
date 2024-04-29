import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_playground/l10n/generated/l10n.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
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
                S.current.login,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              FormBuilder(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FormBuilderTextField(
                      name: 'text',
                      onChanged: (val) {
                        print(val); // Print the text value write into TextField
                      },
                    ),
                    FormBuilderTextField(
                      name: 'dawd',
                      onChanged: (val) {
                        print(val); // Print the text value write into TextField
                      },
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Text(S.current.submit),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: Text(S.current.reset_password),
              ),
              MaterialButton(
                onPressed: () {},
                child: Text(S.current.register),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
