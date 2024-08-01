import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/categoryCardList.dart';
import 'package:flutter_application/widgets/newstileListBuilder.dart';

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('News'),
              Text('Cloud', style: TextStyle(color: Colors.amber)),
            ],
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CategoryCardList()),
            SliverToBoxAdapter(child: SizedBox(height: 15)),
            NewsTileListBuilder(),  // General News by Default
          ],
        ),
      ),
    );
  }
}
