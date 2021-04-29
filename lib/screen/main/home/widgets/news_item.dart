import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pago_mobile/model/news.dart';
import 'package:pago_mobile/utils/utils.dart';

class NewsItem extends StatelessWidget {
  final News news;
  final Function onPressed;

  const NewsItem({Key key, this.news, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(news),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(PagoDimen.common),
        ),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            Hero(
              tag: news.id,
              child: FadeInImage.assetNetwork(
                placeholder: "assets/images/img_sample_event.jpg",
                image: "https://picsum.photos/200",
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black.withOpacity(0.8), Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: PagoDimen.common,
                  vertical: PagoDimen.small,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      news.title,
                      style: PagoTextStyle.h3.copyWith(
                        color: Colors.white,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    SizedBox(height: PagoDimen.small),
                    Text(
                      news.desc,
                      style: PagoTextStyle.subtile.copyWith(
                        color: Colors.white,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
