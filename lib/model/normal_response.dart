class NormalResponse {
  final bool isSuccess;
  final int code;
  final String message;

  NormalResponse({
    required this.isSuccess,
    required this.code,
    required this.message,
  });

  factory NormalResponse.fromJson(Map<String, dynamic> json) {
    return NormalResponse(
      isSuccess: json['isSuccess'],
      code: json['code'],
      message: json['message'],
    );
  }
}
