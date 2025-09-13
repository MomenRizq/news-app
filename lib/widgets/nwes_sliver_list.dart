import 'package:flutter/material.dart';
import 'package:news_app/model/articles_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_widget.dart';

class NewsSliverList extends StatefulWidget {
  const NewsSliverList({
    super.key,
  });

  @override
  State<NewsSliverList> createState() => _NewsSliverListState();
}

class _NewsSliverListState extends State<NewsSliverList> {
  List<ArticlesModel> articles = [];
  bool isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  Future<void> getData() async {
    articles = await NewsServices().getNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SliverToBoxAdapter(
            child: const Center(child: CircularProgressIndicator()))
        : SliverList(
            delegate: SliverChildBuilderDelegate(
            childCount: articles.length,
            (context, i) {
              return NewsWidget(articlesModel: articles[i]);
            },
          ));
  }
}
