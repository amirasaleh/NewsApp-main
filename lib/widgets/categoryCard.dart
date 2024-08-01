import 'package:flutter/material.dart';
import 'package:flutter_application/models/categoryModel.dart';
import 'package:flutter_application/views/categoryView.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return CategoryView(categoryName: category.name);
          }),
        );
      },
      child: Container(
        width: 170,
        height: 95,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage(category.image),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Text(
            category.name,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
