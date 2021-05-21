import 'package:exam_erni/model/user_model.dart';

class UserViewModel {
  final UserModel user;

  UserViewModel({required this.user});

  String get id {
    return this.user.id;
  }

  String get name {
    return this.user.name;
  }

  String get imageUrl {
    return this.user.imageUrl;
  }
}
