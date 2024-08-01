class ArticleModel {
  final String title;
  final String? subTitle;
  final String? imageURL;
  final String? newsURL;

  ArticleModel(
      {required this.newsURL,
      required this.title,
      required this.subTitle,
      required this.imageURL});

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      title: json['title'],
      subTitle: json['description'],
      imageURL: json['urlToImage'],
      newsURL: json['url'],
    );
  }
}
