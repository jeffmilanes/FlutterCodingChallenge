class UserModel {
  final String id;
  final String name;
  final String imageUrl;

  const UserModel(
      {required this.id, required this.name, required this.imageUrl});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        id: json['id'], name: json['name'], imageUrl: json['imageUrl']);
  }

  // remove duplicate
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModel &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          imageUrl == other.imageUrl;

  @override
  int get hashCode => name.hashCode;

  static List<UserModel> fromJsonList(List list) {
    return list.map((item) => UserModel.fromJson(item)).toSet().toList();
  }
}
