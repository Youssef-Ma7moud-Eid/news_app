import 'package:flutter/material.dart';
import 'package:news_app/views/card_news.dart';
import 'package:news_app/widgets/newbulider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          //      mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CardNews()),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 30,
              ),
            ),
            NewsBuilder(general: 'general'),
          ],
        ),
        // child: Column(
        //   children: [
        //     CardNews(),
        //     SizedBox(
        //       height: 30,
        //     ),
        //     Expanded(
        //       child: NewsTile(),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
