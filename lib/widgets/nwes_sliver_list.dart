import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_widget.dart';

class NewsSliverList extends StatelessWidget {
  const NewsSliverList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: 20,
      (context, i) {
        return NewsWidget();
      },
    ));
  }
}
