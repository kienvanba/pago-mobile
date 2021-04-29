import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:pago_mobile/model/news.dart';
import 'package:pago_mobile/utils/app_constants.dart';

class NewsScreen extends StatelessWidget {
  final News news;

  const NewsScreen({Key key, this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: news.id,
              child: FadeInImage.assetNetwork(
                placeholder: "assets/images/img_sample_event.jpg",
                image: news.imageUrl,
                width: double.infinity,
                fit: BoxFit.contain,
                imageErrorBuilder: (context, error, stackTrace) {
                  stackTrace.toString();
                  return SizedBox.shrink();
                },
              ),
            ),
            SizedBox(
              height: PagoDimen.common,
            ),
            Html(data: news.content),
          ],
        ),
      ),
    );
  }
}
