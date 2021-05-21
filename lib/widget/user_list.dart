import 'package:exam_erni/viewModel/user_view_model.dart';
import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  final List<UserViewModel> users;
  UserList({required this.users});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.users.length,
      itemBuilder: (context, index) {
        final user = this.users[index];
        return ListTile(
          contentPadding: EdgeInsets.all(10),
          leading: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(user.imageUrl)),
                borderRadius: BorderRadius.circular(6)),
            width: 50,
            height: 100,
          ),
          title: Text(user.name),
        );
      },
    );
  }
}
