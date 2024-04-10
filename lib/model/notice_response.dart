class NoticeResponse {
  final bool isSuccess;
  final int code;
  final String message;
  final NoticeResult result;

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
      result: NoticeResult.fromJson(json['result']),
    );
  }
}

class NoticeResult {
  final List<String> noticeList;
  final NoticeDocumentList noticeDocumentList;

  NoticeResult({
    required this.noticeList,
    required this.noticeDocumentList,
  });

  factory NoticeResult.fromJson(Map<String, dynamic> json) {
    return NoticeResult(
      noticeList: List<String>.from(json['noticeList']),
      noticeDocumentList:
          NoticeDocumentList.fromJson(json['noticeDocumentList']),
    );
  }
}

class NoticeDocumentList {
  final List<NoticeDocument> content;
  final Pageable pageable;
  final bool last;
  final int totalElements;
  final int totalPages;
  final int size;
  final int number;
  final bool first;
  final int numberOfElements;
  final bool empty;

  NoticeDocumentList({
    required this.content,
    required this.pageable,
    required this.last,
    required this.totalElements,
    required this.totalPages,
    required this.size,
    required this.number,
    required this.first,
    required this.numberOfElements,
    required this.empty,
  });

  factory NoticeDocumentList.fromJson(Map<String, dynamic> json) {
    return NoticeDocumentList(
      content: List<NoticeDocument>.from(
          json['content'].map((x) => NoticeDocument.fromJson(x))),
      pageable: Pageable.fromJson(json['pageable']),
      last: json['last'],
      totalElements: json['totalElements'],
      totalPages: json['totalPages'],
      size: json['size'],
      number: json['number'],
      first: json['first'],
      numberOfElements: json['numberOfElements'],
      empty: json['empty'],
    );
  }
}

class NoticeDocument {
  final String id;
  final String title;
  final String date;
  final String href;
  final String type;
  final String tags;

  NoticeDocument({
    required this.id,
    required this.title,
    required this.date,
    required this.href,
    required this.type,
    required this.tags,
  });

  factory NoticeDocument.fromJson(Map<String, dynamic> json) {
    return NoticeDocument(
      id: json['id'],
      title: json['title'],
      date: json['date'],
      href: json['href'],
      type: json['type'],
      tags: json['tags'],
    );
  }
}

class Pageable {
  final int pageNumber;
  final int pageSize;
  final Sort sort;
  final int offset;
  final bool unpaged;
  final bool paged;

  Pageable({
    required this.pageNumber,
    required this.pageSize,
    required this.sort,
    required this.offset,
    required this.unpaged,
    required this.paged,
  });

  factory Pageable.fromJson(Map<String, dynamic> json) {
    return Pageable(
      pageNumber: json['pageNumber'],
      pageSize: json['pageSize'],
      sort: Sort.fromJson(json['sort']),
      offset: json['offset'],
      unpaged: json['unpaged'],
      paged: json['paged'],
    );
  }
}

class Sort {
  final bool empty;
  final bool sorted;
  final bool unsorted;

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
