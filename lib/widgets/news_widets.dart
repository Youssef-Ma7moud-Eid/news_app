import 'package:flutter/material.dart';
import 'package:news_app/model/news_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:news_app/views/web_view.dart';

class News extends StatelessWidget {
  const News({super.key, required this.model});
  final ArticleNews model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const WebView()));
      },
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 20, bottom: 15),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: model.image != null
                ? CachedNetworkImage(
                    imageUrl: model.image!,
                    placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator(
                        color: Colors.blue,
                      ),
                    ),
                    errorWidget: (context, url, error) =>
                        Image.asset('assets/Photo1_tile.avif'),
                    height: 220,
                    width: 380,
                    fit: BoxFit.fill,
                  )
                : SizedBox(
                    child: Image.asset('assets/images/Photo1_tile.avif'),
                    height: 220,
                    width: 380,
                  ),
          ),
          Text(
            model.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              bottom: 5,
            ),
          ),
          Text(
            model.subtitle ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
