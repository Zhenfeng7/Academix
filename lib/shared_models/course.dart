import 'package:academix_flutter/shared_models/course_file.dart';
import 'package:academix_flutter/shared_models/course_section.dart';
import 'package:academix_flutter/shared_models/message.dart';

class CourseModel {
  late String id;  // university + department + courseCode
  final String university;
  final String department;
  final String courseCode;
  late Map<String, CourseSectionModel> courseSections;
  late List<String> students;
  late List<CourseFileModel> fileArchive;
  late List<MessageModel> messages;


  CourseModel(this.university, this.department, this.courseCode) {
    id = '$university.$department.$courseCode';
    courseSections = {};
    students = [];
    fileArchive = [];
    messages = [];
  }

  String getName() => '$department$courseCode';
}
