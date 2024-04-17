class RewardContent {
  final String id;
  final String date;
  final String userId;
  final String message;
  final int reward;
  final int totalReward;

  RewardContent({
    required this.id,
    required this.date,
    required this.userId,
    required this.message,
    required this.reward,
    required this.totalReward,
  });

  factory RewardContent.fromJson(Map<String, dynamic> json) {
    return RewardContent(
      id: json['id'],
      date: json['date'],
      userId: json['userId'],
      message: json['message'],
      reward: json['reward'],
      totalReward: json['totalReward'],
    );
  }
}

class RewardPageable {
  final int pageNumber;
  final int pageSize;
  final RewardSort sort;
  final int offset;
  final bool paged;
  final bool unpaged;

  RewardPageable({
    required this.pageNumber,
    required this.pageSize,
    required this.sort,
    required this.offset,
    required this.paged,
    required this.unpaged,
  });

  factory RewardPageable.fromJson(Map<String, dynamic> json) {
    return RewardPageable(
      pageNumber: json['pageNumber'],
      pageSize: json['pageSize'],
      sort: RewardSort.fromJson(json['sort']),
      offset: json['offset'],
      paged: json['paged'],
      unpaged: json['unpaged'],
    );
  }
}

class RewardSort {
  final bool empty;
  final bool sorted;
  final bool unsorted;

  RewardSort({
    required this.empty,
    required this.sorted,
    required this.unsorted,
  });

  factory RewardSort.fromJson(Map<String, dynamic> json) {
    return RewardSort(
      empty: json['empty'],
      sorted: json['sorted'],
      unsorted: json['unsorted'],
    );
  }
}

class RewardResponse {
  final bool isSuccess;
  final int code;
  final String message;
  final RewardResult result;

  RewardResponse({
    required this.isSuccess,
    required this.code,
    required this.message,
    required this.result,
  });

  factory RewardResponse.fromJson(Map<String, dynamic> json) {
    return RewardResponse(
      isSuccess: json['isSuccess'],
      code: json['code'],
      message: json['message'],
      result: RewardResult.fromJson(json['result']),
    );
  }
}

class RewardResult {
  final List<RewardContent> content;
  final RewardPageable pageable;
  final bool last;
  final int totalElements;
  final int totalPages;
  final int size;
  final int number;
  final RewardSort sort;
  final bool first;
  final int numberOfElements;
  final bool empty;

  RewardResult({
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

  factory RewardResult.fromJson(Map<String, dynamic> json) {
    return RewardResult(
      content: List<RewardContent>.from(
          json['content'].map((x) => RewardContent.fromJson(x))),
      pageable: RewardPageable.fromJson(json['pageable']),
      last: json['last'],
      totalElements: json['totalElements'],
      totalPages: json['totalPages'],
      size: json['size'],
      number: json['number'],
      sort: RewardSort.fromJson(json['sort']),
      first: json['first'],
      numberOfElements: json['numberOfElements'],
      empty: json['empty'],
    );
  }
}
