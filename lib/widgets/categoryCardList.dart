import 'package:flutter/material.dart';
import 'package:flutter_application/models/categoryModel.dart';
import 'package:flutter_application/widgets/categoryCard.dart';

class CategoryCardList extends StatelessWidget {
  const CategoryCardList({super.key});

  final List<CategoryModel> category = const [
    CategoryModel(
      name: 'Business',
      image: 'assets/health.jpg',
    ),
    CategoryModel(
      name: 'Entertainment',
      image: 'assets/technology.jpeg',
    ),
    CategoryModel(
      name: 'General',
      image: 'assets/health.jpg',
    ),
    CategoryModel(
      name: 'Health',
      image: 'assets/health.jpg',
    ),
    CategoryModel(
      name: 'Science',
      image: 'assets/science.jpg',
    ),
    CategoryModel(
      name: 'Sports',
      image: 'assets/science.jpg',
    ),
    CategoryModel(
      name: 'Technology',
      image: 'assets/technology.jpeg',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: category.length,
          separatorBuilder: (context, index) => const SizedBox(width: 15),
          itemBuilder: (context, index) {
            return CategoryCard(category: category[index]);
          }),
    );
  }
}
