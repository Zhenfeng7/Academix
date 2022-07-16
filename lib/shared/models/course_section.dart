import 'package:academix_flutter/shared/models/course.dart';

class CourseSectionModel {
  CourseModel course;
  String section;  // Lec0101
  String time;
  String instructor;
  String location;

  CourseSectionModel(
      this.course,
      this.section,
      this.time,
      this.instructor,
      this.location
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CourseSectionModel &&
        other.course.id == course.id &&
        other.section == section;
  }

  @override
  int get hashCode => course.id.hashCode ^ section.hashCode;
}
