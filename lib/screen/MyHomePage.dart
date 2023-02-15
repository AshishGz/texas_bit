import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:texas_bit/model/News.dart';
import 'package:texas_bit/providers/mainProvider.dart';
import 'package:texas_bit/screen/newsDetails.dart';
import 'package:texas_bit/widgets/newsCard.dart';
import 'package:http/http.dart' as http;
class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
List<News> _news=[];
  @override
  initState(){
    onGetNews();
  }

  onGetNews() async {
    try {
      var url = Uri.https('api.jsonserve.com','/fqpN3J');
      var response = await http.get(url);
      print('Response status: ${response.statusCode}');
      jsonDecode(response.body)['articles'].forEach((news)=>{
       _news.add(News.fromJson(news))
      });
      setState(() {

      });
    }catch(e){
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    final mainProvider=Provider.of<MainProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text(mainProvider.userLocal=='en'?'News':'समाचार'),
      actions: [
        InkWell(
            onTap: (){
              mainProvider.setUserLocal
                (mainProvider.userLocal=='en'?'ne':'en');
            },
            child: Icon(Icons.language))
      ],
      ),
      body: ListView(
        children: [
          ..._news.map((e) =>
          InkWell(
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>NewsDetails(news: e)));
              },
              child: NewsCard(news: e,)),

          )

        ],
      ),);
  }
}
