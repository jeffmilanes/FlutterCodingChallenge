import 'package:exam_erni/screen/user_screen.dart';
import 'package:exam_erni/viewModel/user_list_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Coding Challenge",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: ChangeNotifierProvider(
          create: (context) => UserListViewModel(),
          child: UserListPage(),
        ));
  }
}
