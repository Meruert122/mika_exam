class AuthRequestModel {
  final String phone;
  final String otp;

  AuthRequestModel({
    required this.phone,
    required this.otp,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'phone': phone.trim(),
      'otp': otp.trim(),
    };
    return map;
  }
}
