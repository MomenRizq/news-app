import 'package:dio/dio.dart';
import 'package:news_app/model/articles_model.dart';

class NewsServices {
  final dio = Dio();

  Future<List<ArticlesModel>> getNews() async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=254e4eb9f33f4901a2e249514f3afc53');

    Map<String, dynamic> jsonData = response.data;

    List<dynamic> articles = jsonData['articles'];

    List<ArticlesModel> articlesList = [];

    for (var article in articles) {
      ArticlesModel articlesModel = ArticlesModel(
        title: article['title'],
        description: article['description'],
        urlToImage: article['urlToImage'],
      );
      articlesList.add(articlesModel);
    }

    return articlesList;
  }
}
