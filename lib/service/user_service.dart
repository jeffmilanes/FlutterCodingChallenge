import 'dart:convert';

import 'package:exam_erni/model/user_model.dart';
import 'package:http/http.dart' as http;

class UserService {
  Future<List<UserModel>> getUsers() async {
    final url = 'https://mocki.io/v1/386e9265-e20d-4aec-ac9c-ed6fc401d48c';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final Iterable body = jsonDecode(response.body);
      return body.map((item) => UserModel.fromJson(item)).toSet().toList();
    } else {
      throw Exception("Unable to perform request!");
    }
  }
}
