import 'package:flutter/material.dart';
import 'package:texas_bit/screen/newsDetails.dart';
import 'package:texas_bit/widgets/newsCard.dart';
import 'package:http/http.dart' as http;
class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  initState(){
    onGetNews();
  }

  onGetNews() async {
    try {
      var url = Uri.https('newsapi.org',
          '/v2/everything?q=tesla&from=2023-01-08&sortBy=publishedAt&apiKey=9b017d9c85e140f58bd094de3f1b99d3');
      var response = await http.get(url);
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
    }catch(e){
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('News'),),
      body: ListView(
        children: [
          ...[1,2,2,2,2,2,2,2,2,2].map((e) =>
          InkWell(
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>NewsDetails()));
              },
              child: NewsCard()),

          )

        ],
      ),);
  }
}
