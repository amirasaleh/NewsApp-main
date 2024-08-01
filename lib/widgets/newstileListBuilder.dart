import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/models/articleModel.dart';
import 'package:flutter_application/services/newsService.dart';
import 'package:flutter_application/widgets/newsTileList.dart';

class NewsTileListBuilder extends StatefulWidget {
  const NewsTileListBuilder({super.key, this.category = 'general'});
  final String category;

  @override
  State<NewsTileListBuilder> createState() => _NewsTileListBuilderState();
}

class _NewsTileListBuilderState extends State<NewsTileListBuilder> {
  dynamic future;
  @override
  void initState() {
    future = NewsService(Dio(), widget.category).getNews();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsTileList(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Text('There was an error'),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
