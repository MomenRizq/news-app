import 'package:flutter/material.dart';
import 'package:news_app/model/category_model.dart';

import 'category_widget.dart';

class CategoryListView extends StatelessWidget {
  CategoryListView({
    super.key,
  });

  List<CategoryModel> CategoryItems = [
    CategoryModel(title: "Business", imageUrl: "assets/business.avif"),
    CategoryModel(title: "Entertainment", imageUrl: "assets/entertaiment.avif"),
    CategoryModel(title: "General", imageUrl: "assets/general.avif"),
    CategoryModel(title: "Health", imageUrl: "assets/health.avif"),
    CategoryModel(title: "Science", imageUrl: "assets/science.avif"),
    CategoryModel(title: "Sports", imageUrl: "assets/sports.avif"),
    CategoryModel(title: "Technology", imageUrl: "assets/technology.jpeg")
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: CategoryItems.length,
            itemBuilder: (context, index) {
              return CategoryWidget(
                title: CategoryItems[index].title,
                imageUrl: CategoryItems[1].imageUrl,
              );
            }));
  }
}
