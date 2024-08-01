import 'package:dio/dio.dart';
import 'package:flutter_application/models/articleModel.dart';

class NewsService {
  final Dio dio;
  final String category;

  NewsService(this.dio, this.category);

  Future<List<ArticleModel>> getNews() async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=b7a04f6dd8a94dc29a8e4d2dd0cf04f0&category=$category');

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
