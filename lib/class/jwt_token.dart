class jwt_token {
  final bool isSuccess;
  final int code;
  final String message;
  final Result result;

  jwt_token({
    required this.isSuccess,
    required this.code,
    required this.message,
    required this.result,
  });

  factory jwt_token.fromJson(Map<String, dynamic> json) => jwt_token(
    isSuccess: json["isSuccess"],
    code: json["code"],
    message: json["message"],
    result: Result.fromJson(json["result"]),
  );

  Map<String, dynamic> toJson() => {
    "isSuccess": isSuccess,
    "code": code,
    "message": message,
    "result": result.toJson(),
  };
}

class Result {
  final String accessToken;
  final String refreshToken;

  Result({
    required this.accessToken,
    required this.refreshToken,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    accessToken: json["accessToken"],
    refreshToken: json["refreshToken"],
  );

  Map<String, dynamic> toJson() => {
    "accessToken": accessToken,
    "refreshToken": refreshToken,
  };
}