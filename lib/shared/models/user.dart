import 'package:academix_flutter/shared/models/course.dart';

class UserModel {
  late String id;  // email
  String name;
  late String avatar;  // firebase image url
  String university;
  late Map<String, CourseModel> courses;  // {'2021F': [CSC108, ...]}
  late List<UserModel> friends;


  UserModel(String email, this.name, this.university) {
    id = email;
    avatar = "";
    courses = {};
    friends = [];
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel &&
        other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}
