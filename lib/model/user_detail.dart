class UserDetail {
  final bool isSuccess;
  final int code;
  final String message;
  final UserResult result;

  UserDetail({
    required this.isSuccess,
    required this.code,
    required this.message,
    required this.result,
  });

  factory UserDetail.fromJson(Map<String, dynamic> json) {
    return UserDetail(
      isSuccess: json['isSuccess'],
      code: json['code'],
      message: json['message'],
      result: UserResult.fromJson(json['result']),
    );
  }
}

class UserResult {
  final String name;
  final int reward;
  final List<String> selectNotice;
  final int review;

  UserResult({
    required this.name,
    required this.reward,
    required this.selectNotice,
    required this.review,
  });

  factory UserResult.fromJson(Map<String, dynamic> json) {
    return UserResult(
      name: json['name'],
      reward: json['reward'],
      selectNotice: List<String>.from(json['selectNotice']),
      review: json['review'],
    );
  }
}
