import 'package:flutter/material.dart';
import 'package:texas_bit/model/News.dart';

class NewsCard extends StatelessWidget {
  News news;
  NewsCard({required this.news});

  @override
  Widget build(BuildContext context) {
    return   Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(news.title,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800
                    ),
                  ),
                  Text(news.content,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  Text(news.author, style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                      color: Colors.grey
                  ),),
                ],
              )),
          Expanded(
              flex: 1,
              child: Image.network(news.urlToImage)),
        ],
      ),
    );
  }
}
