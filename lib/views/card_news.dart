import 'package:flutter/material.dart';
import 'package:news_app/model/card_model.dart';
import 'package:news_app/widgets/card_widget.dart';

class CardNews extends StatelessWidget {
  const CardNews({super.key});
  final List<Model> model = const [
    Model(image: 'assets/business.avif', text: 'business'),
    Model(image: 'assets/entertaiment.avif', text: 'entertainment'),
    Model(image: 'assets/general.avif', text: 'general'),
    Model(image: 'assets/health.avif', text: 'health'),
    Model(image: 'assets/science.avif', text: 'science'),
    Model(image: 'assets/sports.avif', text: 'sports'),
    Model(image: 'assets/technology.jpeg', text: 'technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: model.length,
        itemBuilder: (context, index) {
          return CardItem(card: model[index]);
        },
      ),
    );
  }
}
