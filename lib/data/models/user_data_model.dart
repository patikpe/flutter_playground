import 'package:firebase_auth/firebase_auth.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class UserDataModel {
  @Id(assignable: true)
  int id = 0;

  UserCredential userCredential;

  UserDataModel({
    required this.userCredential,
  });
}
