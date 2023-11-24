import 'package:news_app/Models/category_news_model.dart';
import 'package:news_app/Repository/news_repository.dart';

import '../Models/HeadlinesModel.dart';

class NewsViewModel {
  final _newsRepo = NewsRepository();

  Future<HeadlinesModel> getHeadliines(String channelName) async {
    var response = await _newsRepo.getHeadlines(channelName);
    return response;
  }

  Future<CategoryNewsModel> getCategoryNews(String category) async {
    var response = await _newsRepo.getCategoryNews(category);
    return response;
  }
}
