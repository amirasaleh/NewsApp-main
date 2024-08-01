import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/newstileListBuilder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.categoryName});
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: CustomScrollView(
          slivers: [
            NewsTileListBuilder(category: categoryName),
          ],
        ),
      ),
    );
  }
}
