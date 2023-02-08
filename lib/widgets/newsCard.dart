import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({Key? key}) : super(key: key);

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
    );
  }
}
