import 'package:exam_erni/widget/user_list.dart';
import 'package:exam_erni/viewModel/user_list_view_model.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class UserListPage extends StatefulWidget {
  @override
  _UserListPageState createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  @override
  void initState() {
    super.initState();
    Provider.of<UserListViewModel>(context, listen: false).fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<UserListViewModel>(context);

    return Scaffold(
        appBar: AppBar(title: Text("Coding Challenge")),
        body: Container(
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(children: <Widget>[
              Expanded(child: UserList(users: vm.users))
            ])));
  }
}
