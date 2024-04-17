class NoticeContent {
  String id;
  String userId;
  String noticeDocumentId;
  String noticeTitle;
  String noticeHref;
  String time;
  String noticeDate;
  String noticeTags;
  String noticeType;

  NoticeContent({
    required this.id,
    required this.userId,
    required this.noticeDocumentId,
    required this.noticeTitle,
    required this.noticeHref,
    required this.time,
    required this.noticeDate,
    required this.noticeTags,
    required this.noticeType,
  });

  factory NoticeContent.fromJson(Map<String, dynamic> json) {
    return NoticeContent(
      id: json['id'],
      userId: json['userId'],
      noticeDocumentId: json['noticeDocumentId'],
      noticeTitle: json['noticeTitle'],
      noticeHref: json['noticeHref'],
      time: json['time'],
      noticeDate: json['noticeDate'],
      noticeTags: json['noticeTags'],
      noticeType: json['noticeType'],
    );
  }
}

class Pageable {
  int pageNumber;
  int pageSize;
  Sort sort;
  int offset;
  bool paged;
  bool unpaged;

  Pageable({
    required this.pageNumber,
    required this.pageSize,
    required this.sort,
    required this.offset,
    required this.paged,
    required this.unpaged,
  });

  factory Pageable.fromJson(Map<String, dynamic> json) {
    return Pageable(
      pageNumber: json['pageNumber'],
      pageSize: json['pageSize'],
      sort: Sort.fromJson(json['sort']),
      offset: json['offset'],
      paged: json['paged'],
      unpaged: json['unpaged'],
    );
  }
}

class Sort {
  bool empty;
  bool sorted;
  bool unsorted;

  Sort({
    required this.empty,
    required this.sorted,
    required this.unsorted,
  });

  factory Sort.fromJson(Map<String, dynamic> json) {
    return Sort(
      empty: json['empty'],
      sorted: json['sorted'],
      unsorted: json['unsorted'],
    );
  }
}

class BookmarkResponse {
  bool isSuccess;
  int code;
  String message;
  Result result;

  BookmarkResponse({
    required this.isSuccess,
    required this.code,
    required this.message,
    required this.result,
  });

  factory BookmarkResponse.fromJson(Map<String, dynamic> json) {
    return BookmarkResponse(
      isSuccess: json['isSuccess'],
      code: json['code'],
      message: json['message'],
      result: Result.fromJson(json['result']),
    );
  }
}

class Result {
  List<NoticeContent> content;
  Pageable pageable;
  bool last;
  int totalElements;
  int totalPages;
  int size;
  int number;
  Sort sort;
  bool first;
  int numberOfElements;
  bool empty;

  Result({
    required this.content,
    required this.pageable,
    required this.last,
    required this.totalElements,
    required this.totalPages,
    required this.size,
    required this.number,
    required this.sort,
    required this.first,
    required this.numberOfElements,
    required this.empty,
  });

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
      content: List<NoticeContent>.from(
          json['content'].map((x) => NoticeContent.fromJson(x))),
      pageable: Pageable.fromJson(json['pageable']),
      last: json['last'],
      totalElements: json['totalElements'],
      totalPages: json['totalPages'],
      size: json['size'],
      number: json['number'],
      sort: Sort.fromJson(json['sort']),
      first: json['first'],
      numberOfElements: json['numberOfElements'],
      empty: json['empty'],
    );
  }
}
