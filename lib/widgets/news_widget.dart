import 'package:flutter/material.dart';
import 'package:news_app/model/articles_model.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({
    super.key,
    required this.articlesModel,
  });

  final ArticlesModel articlesModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              articlesModel.urlToImage ??
                  "https://i.pinimg.com/originals/dc/55/a7/dc55a7baa9cbd457221ae6d12d9b1b51.jpg",
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 7),
          Text(
            articlesModel.title,
            style: TextStyle(
              fontSize: 18,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            articlesModel.description,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
