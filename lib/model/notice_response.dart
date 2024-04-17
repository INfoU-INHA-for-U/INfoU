class NoticeResponse {
  bool isSuccess;
  int code;
  String message;
  Result result;

  NoticeResponse({
    required this.isSuccess,
    required this.code,
    required this.message,
    required this.result,
  });

  factory NoticeResponse.fromJson(Map<String, dynamic> json) {
    return NoticeResponse(
      isSuccess: json['isSuccess'],
      code: json['code'],
      message: json['message'],
      result: Result.fromJson(json['result']),
    );
  }
}

class Result {
  List<String> noticeList;
  List<NoticeDocument> noticeDocumentList;

  Result({
    required this.noticeList,
    required this.noticeDocumentList,
  });

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
      noticeList: List<String>.from(json['noticeList']),
      noticeDocumentList: List<NoticeDocument>.from(
          json['noticeDocumentList'].map((x) => NoticeDocument.fromJson(x))),
    );
  }
}

class NoticeDocument {
  String id;
  String title;
  String tags;
  String localDateTime;

  NoticeDocument({
    required this.id,
    required this.title,
    required this.tags,
    required this.localDateTime,
  });

  factory NoticeDocument.fromJson(Map<String, dynamic> json) {
    return NoticeDocument(
      id: json['id'],
      title: json['title'],
      tags: json['tags'],
      localDateTime: json['localDateTime'],
    );
  }
}
