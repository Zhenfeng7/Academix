// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class LoginSignupModel {
  String? s;
  int? n;
  LoginSignupModel({
    this.s,
    this.n,
  });

  LoginSignupModel copyWith({
    String? s,
    int? n,
  }) {
    return LoginSignupModel(
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

  factory LoginSignupModel.fromMap(Map<String, dynamic> map) {
    return LoginSignupModel(
      s: map['s'] != null ? map['s'] as String : null,
      n: map['n'] != null ? map['n'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginSignupModel.fromJson(String source) => LoginSignupModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'LoginSignupModel(s: $s, n: $n)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is LoginSignupModel &&
      other.s == s &&
      other.n == n;
  }

  @override
  int get hashCode => s.hashCode ^ n.hashCode;
}
