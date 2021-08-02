import 'user.dart';

class ListUsers {
  List<User> users;

  ListUsers({required this.users});

  factory ListUsers.fromJson(List<dynamic> json) {
    return ListUsers(users: json.map((e) => User.fromMap(e)).toList());
  }

  List<dynamic> toJson() {
    return users;
  }

  @override
  String toString() => 'ListUsers(users: $users)';
}
