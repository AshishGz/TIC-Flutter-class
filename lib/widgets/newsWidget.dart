import 'package:flutter/material.dart';
import 'package:flutter_class_TIC/model/news.dart';

class NewsWidget extends StatelessWidget {
  News news;
  NewsWidget({this.news});

  getImage(String imgaeUrl) {
    if (imgaeUrl != null) {
      return Image.network(imgaeUrl);
    } else {
      return SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          news.title,
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            news.author,
            style: TextStyle(color: Colors.grey.shade700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 14.0),
          child: Row(
            children: <Widget>[
              Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(news.description),
                  )),
              Expanded(flex: 1, child: getImage(news.urlToImage))
            ],
          ),
        )
      ],
    );
  }
}
