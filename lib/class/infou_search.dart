class InfouSearch {
  String id;
  DateTime timestamp;
  String lectureName;
  String lectureType;
  String professorName;
  String academicNumber;
  String skill;
  String level;
  double score;
  String review;
  int agree;
  int disagree;
  String userId;
  String department;
  String semester;
  String grade;

  InfouSearch({
    required this.id,
    required this.timestamp,
    required this.lectureName,
    required this.lectureType,
    required this.professorName,
    required this.academicNumber,
    required this.skill,
    required this.level,
    required this.score,
    required this.review,
    required this.agree,
    required this.disagree,
    required this.userId,
    required this.department,
    required this.semester,
    required this.grade,
  });

  factory InfouSearch.fromJson(Map<String, dynamic> json) => InfouSearch(
    id: json["id"] ?? '',
    timestamp: DateTime.parse(json["timestamp"]),
    lectureName: json["lectureName"] ?? '',
    lectureType: json["lectureType"] ?? '',
    professorName: json["professorName"] ?? '',
    academicNumber: json["academicNumber" ?? ''],
    skill: json["skill"] ?? '',
    level: json["level"] ?? '',
    score: json["score"] ?? 0,
    review: json["review"] ?? '',
    agree: json["agree"] ?? 0,
    disagree: json["disagree"] ?? 0,
    userId: json["userId"] ?? '',
    department: json["department"] ?? '',
    semester: json["semester"] ?? '',
    grade: json["grade"] ?? '',
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "timestamp": timestamp.toIso8601String(),
    "lectureName": lectureName,
    "lectureType": lectureType,
    "professorName": professorName,
    "academicNumber": academicNumber,
    "skill": skill,
    "level": level,
    "score": score,
    "review": review,
    "agree": agree,
    "disagree": disagree,
    "userId": userId,
    "department": department,
    "semester": semester,
    "grade": grade,
  };
}

class InfouPopular {
  String id;
  String academicNumber;
  String lectureName;
  String lectureType;
  String professorName;
  String department;
  double averageValue;
  double sumValue;
  int count;

  InfouPopular({
    required this.id,
    required this.academicNumber,
    required this.lectureName,
    required this.lectureType,
    required this.professorName,
    required this.department,
    required this.averageValue,
    required this.sumValue,
    required this.count,
  });

  factory InfouPopular.fromJson(Map<String, dynamic> json) => InfouPopular(
    id: json["id"] ?? '',
    academicNumber: json["academicNumber"] ?? '',
    lectureName: json["lectureName"] ?? '',
    lectureType: json["lectureType"] ?? '',
    professorName: json["professorName"] ?? '',
    department: json["department"] ?? '',
    averageValue: json["averageValue"]?.toDouble() ?? 0,
    sumValue: json["sumValue"]?.toDouble() ?? 0,
    count: json["count"] ?? 0,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "academicNumber": academicNumber,
    "lectureName": lectureName,
    "lectureType": lectureType,
    "professorName": professorName,
    "department": department,
    "averageValue": averageValue,
    "sumValue": sumValue,
    "count": count,
  };
}