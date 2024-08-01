import 'package:flutter/material.dart';
import 'package:flutter_application/models/articleModel.dart';
import 'package:flutter_application/widgets/newsTile.dart';

class NewsTileList extends StatelessWidget {
  const NewsTileList({super.key, required this.articles});
  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      separatorBuilder: (context, index) => const SizedBox(height: 15),
      itemCount: articles.length,
      itemBuilder: (context, index) => NewsTile(articleModel: articles[index]),
    );
  }
}

    // return SliverList(
    //   delegate: SliverChildBuilderDelegate(
    //     childCount: articles.length,
    //     (context, index) {
    //       return NewsTile(articleModel: articles[index]);
    //     },
    //   ),