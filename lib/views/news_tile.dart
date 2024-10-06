import 'package:flutter/material.dart';
import 'package:news_app/model/news_model.dart';
import 'package:news_app/widgets/news_widets.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.model});
  final List<ArticleNews> model;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: model.length,
        (context, index) {
          return News(model: model[index]);
        },
      ),
    );
  }
}
