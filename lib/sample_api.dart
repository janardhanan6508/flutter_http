class SampleApi {
  final int userId;
  final int id;
  final String title;
  final String body;

  SampleApi(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});

  factory SampleApi.fromJson(Map<String, dynamic> json) {
    return SampleApi(
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
    );
  }
}
