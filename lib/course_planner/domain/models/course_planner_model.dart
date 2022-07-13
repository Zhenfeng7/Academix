// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CoursePlannerModel {
  String? s;
  int? n;
  CoursePlannerModel({
    this.s,
    this.n,
  });

  CoursePlannerModel copyWith({
    String? s,
    int? n,
  }) {
    return CoursePlannerModel(
      s: s ?? this.s,
      n: n ?? this.n,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's': s,
      'n': n,
    };
  }

  factory CoursePlannerModel.fromMap(Map<String, dynamic> map) {
    return CoursePlannerModel(
      s: map['s'] != null ? map['s'] as String : null,
      n: map['n'] != null ? map['n'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CoursePlannerModel.fromJson(String source) => CoursePlannerModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CoursePlannerModel(s: $s, n: $n)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CoursePlannerModel &&
      other.s == s &&
      other.n == n;
  }

  @override
  int get hashCode => s.hashCode ^ n.hashCode;
}
