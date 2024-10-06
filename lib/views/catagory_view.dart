import 'package:flutter/material.dart';
import 'package:news_app/model/card_model.dart';
import 'package:news_app/widgets/newbulider.dart';

class CatagoryView extends StatelessWidget {
  const CatagoryView({super.key, required this.model});
  final Model model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        centerTitle: true,
        title: Text(
          model.text,
          style: const TextStyle(
            color: Color.fromARGB(255, 12, 12, 12),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          NewsBuilder(
            general: model.text,
          ),
        ],
      ),
    );
  }
}
