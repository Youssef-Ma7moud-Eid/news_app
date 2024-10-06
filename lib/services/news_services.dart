import 'package:dio/dio.dart';

import 'package:news_app/model/news_model.dart';

class NewsServices {
  final Dio dio = Dio();
  List<ArticleNews> listnews = [];

  Future<List<ArticleNews>> getnews(String catagory) async {
    try {
      await Future.delayed(const Duration(seconds: 3), () async {
        final Response response = await dio.get(
            'https://saurav.tech/NewsAPI/top-headlines/category/$catagory/in.json');
        Map<String, dynamic> jsondata = response.data;
        List<dynamic> articles = jsondata["articles"];

        for (var e in articles) {
          listnews.add(ArticleNews(
              image: e["urlToImage"],
              title: e["title"],
              subtitle: e["description"]));
        }
      });
    } catch (e) {}
    return listnews;
  }
}
