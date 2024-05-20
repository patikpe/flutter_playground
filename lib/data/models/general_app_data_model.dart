import 'package:objectbox/objectbox.dart';

@Entity()
class GeneralAppDataModel {
  @Id(assignable: true)
  int id = 0;

  String? name;

  GeneralAppDataModel({
    this.name,
  });
}
