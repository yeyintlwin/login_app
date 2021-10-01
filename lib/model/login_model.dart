class LoginRequestModel {
  String? email;
  String? password;

  LoginRequestModel({
    this.email,
    this.password,
  });

  Map<String, dynamic> toJson() {
    return {
      'email': email!.trim(),
      'password': password!.trim(),
    };
  }
}

class LoginResponseModel {
  final String token;
  final String error;

  LoginResponseModel({
    required this.token,
    required this.error,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
      token: json['token'] ?? "",
      error: json['error'] ?? "",
    );
  }
}
