import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_class_TIC/model/news.dart';
import 'package:flutter_class_TIC/screen/newsDetailScreen.dart';
import 'package:flutter_class_TIC/widgets/newsWidget.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class NewsScreen extends StatefulWidget {
  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  List<News> newsData = new List();
  bool isLoading = true;

  getNewsData() async {
    try {
      var url =
          'http://newsapi.org/v2/everything?q=bitcoin&from=2020-09-03&sortBy=publishedAt&apiKey=9b017d9c85e140f58bd094de3f1b99d3';

      // Await the http get response, then decode the json-formatted response.
      var response = await http.get(url);
      if (response.statusCode == 200) {
        var jsonResponse = convert.jsonDecode(response.body);
        jsonResponse['articles'].forEach((v) {
          newsData.add(News.fromJson(v));
        });
        isLoading = false;
        setState(() {});
      } else {
        print('Request failed with status:');
      }
    } catch (e) {
      log(e);
    }
  }

  @override
  void initState() {
    getNewsData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Call Example'),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 14.0),
              child: ListView.separated(
                padding: const EdgeInsets.all(8),
                itemCount: newsData.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 14.0, top: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (BuildContext context) {
                            return NewsDetailScreen(news: newsData[index]);
                          },
                        ));
                      },
                      child: NewsWidget(
                        news: newsData[index],
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
                  color: Colors.grey,
                ),
              ),
            ),
    );
  }
}
