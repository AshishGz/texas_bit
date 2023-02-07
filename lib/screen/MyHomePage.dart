import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          ...[1,2,2,2,2,2,2,2,2,2].map((e) =>
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Student cannot Learn due to lack of Iternet",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800
                              ),
                            ),
                            Text("Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                            Text("GautamNews.com", style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                                color: Colors.grey
                            ),),
                          ],
                        )),
                    Expanded(
                        flex: 1,
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-QTCe6MUjUm46ek4mCU7w03Dw5Pth03NKmA&usqp=CAU")),
                  ],
                ),
              ),
          )

        ],
      ),);
  }
}
