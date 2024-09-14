import 'dart:convert';

class PocketBaseException {
  int? code;
  String? message;
  Data? data;

  PocketBaseException({
    this.code,
    this.message,
    this.data,
  });

  factory PocketBaseException.fromRawJson(String str) =>
      PocketBaseException.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PocketBaseException.fromJson(Map<String, dynamic> json) =>
      PocketBaseException(
        code: json["code"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "data": data?.toJson(),
      };
}

class Data {
  Email? email;
  Email? password;

  Data({
    this.email,
    this.password,
  });

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        email: json["email"] == null ? null : Email.fromJson(json["email"]),
        password:
            json["password"] == null ? null : Email.fromJson(json["password"]),
      );

  Map<String, dynamic> toJson() => {
        "email": email?.toJson(),
        "password": password?.toJson(),
      };
}

class Email {
  String? code;
  String? message;

  Email({
    this.code,
    this.message,
  });

  factory Email.fromRawJson(String str) => Email.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Email.fromJson(Map<String, dynamic> json) => Email(
        code: json["code"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
      };
}
