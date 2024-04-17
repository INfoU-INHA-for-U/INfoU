class NoticeDetail {
  final bool isSuccess;
  final int code;
  final String message;
  final NoticeResult result;

  NoticeDetail({
    required this.isSuccess,
    required this.code,
    required this.message,
    required this.result,
  });

  factory NoticeDetail.fromJson(Map<String, dynamic> json) {
    return NoticeDetail(
      isSuccess: json['isSuccess'],
      code: json['code'],
      message: json['message'],
      result: NoticeResult.fromJson(json['result']),
    );
  }
}

class NoticeResult {
  final String id;
  final String title;
  final String date;
  final String href;
  final String type;
  final String tags;
  final String content;

  NoticeResult({
    required this.id,
    required this.title,
    required this.date,
    required this.href,
    required this.type,
    required this.tags,
    required this.content,
  });

  factory NoticeResult.fromJson(Map<String, dynamic> json) {
    return NoticeResult(
      id: json['id'],
      title: json['title'],
      date: json['date'],
      href: json['href'],
      type: json['type'],
      tags: json['tags'],
      content: json['content'],
    );
  }
}
