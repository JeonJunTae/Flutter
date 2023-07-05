class WebtoonDetailModel {
  final String title, about, genre, age;

  WebtoonDetailModel.fromJson(Map<String, dynamic> json) // 전달받은 json으로 멤버 초기화
      : title = json['title'],
        about = json['about'],
        genre = json['genre'],
        age = json['age'];
}
