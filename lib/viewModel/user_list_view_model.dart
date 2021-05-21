import 'package:exam_erni/service/user_service.dart';
import 'package:exam_erni/viewModel/user_view_model.dart';
import 'package:flutter/cupertino.dart';

class UserListViewModel extends ChangeNotifier {
  List<UserViewModel> users = [];

  Future<void> fetchUsers() async {
    final results = await UserService().getUsers();

    this.users = results.map((item) => UserViewModel(user: item)).toList();
    notifyListeners();
  }
}
