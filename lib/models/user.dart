import 'package:academix_flutter/models/course.dart';

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
}
