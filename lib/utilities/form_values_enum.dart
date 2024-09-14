enum FormEnumValues {
  email(code: 'email'),
  password(code: 'password'),
  passwordConfirm(code: 'passwordConfirm');

  const FormEnumValues({required this.code});

  final String code;
}
