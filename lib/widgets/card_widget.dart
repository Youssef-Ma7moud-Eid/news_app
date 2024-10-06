import 'package:flutter/material.dart';
import 'package:news_app/model/card_model.dart';
import 'package:news_app/views/catagory_view.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key, required this.card});
  final Model card;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CatagoryView(
                model: card,
              );
            },
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(left: 10, right: 10),
        alignment: Alignment.center,
        height: 130,
        width: 240,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(card.image),
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 45),
          child: Text(
            card.text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
