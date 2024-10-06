import 'package:flutter/material.dart';
import 'package:news_app/model/news_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/views/news_tile.dart';

class NewsBuilder extends StatefulWidget {
  const NewsBuilder({super.key, required this.general});
  final String general;
  @override
  State<NewsBuilder> createState() => _NewsBuilderState();
}

var future;

class _NewsBuilderState extends State<NewsBuilder> {
  @override
  initState() {
    super.initState();

    future = NewsServices().getnews(widget.general);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleNews>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsTile(
              model: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
                child: Text('OoPS there an error here '));
          } else {
            return const SliverToBoxAdapter(
                child: Center(
                    child: CircularProgressIndicator(color: Colors.blue)));
          }
        });
    // return isload == true
    //    // ? const SliverToBoxAdapter(
    //         child: Center(child: CircularProgressIndicator(color: Colors.blue)))
    //     : list.isNotEmpty
    //       //  ? NewsTile(model: list)
    //         : const SliverToBoxAdapter(
    //             child: Text('OoPS there an error here '),
    //           );
  }
}
