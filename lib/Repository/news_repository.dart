import 'dart:convert';

import 'package:news_app/Models/category_news_model.dart';

import '../Models/HeadlinesModel.dart';
import 'package:http/http.dart' as http;

class NewsRepository {
  Future<HeadlinesModel> getHeadlines(String channelName) async {
    String url =
        'https://newsapi.org/v2/top-headlines?sources=$channelName&apiKey=51a0cc3625684b8e88cf9295b0f1e806';

    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      return HeadlinesModel.fromJson(data);
    } else {
      throw Exception('No data!');
    }
  }

  Future<CategoryNewsModel> getCategoryNews(String category) async {
    String url =
        'https://newsapi.org/v2/everything?q=$category&apiKey=51a0cc3625684b8e88cf9295b0f1e806';

    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      return CategoryNewsModel.fromJson(data);
    } else {
      throw Exception('No data!');
    }
  }
}
