import 'package:flutter/material.dart';

class NewsDetails extends StatelessWidget {


  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.white,
    primary: Colors.green,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(6)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('News'),),
        body: ListView(
          children: [
            Container(
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
              child:   Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Text("Student cannot Learn due to lack of Iternet",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("GautamNews.com", style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w800,
                        color: Colors.grey
                    ),),
                    Text("14 feb 2023,Tuesday", style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w800,
                        color: Colors.grey
                    ),),
                  ],
                ),
                SizedBox(height: 20,),
                Center(child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-QTCe6MUjUm46ek4mCU7w03Dw5Pth03NKmA&usqp=CAU")),
                SizedBox(height: 20,),
                Text("Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of \nIternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to \nlack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot \nLearn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet Student cannot Learn due to lack of Iternet",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                  ),
                ),
                SizedBox(height: 20,),
                Center(
                  child: ElevatedButton(
                    style: raisedButtonStyle,
                    onPressed: () { },
                    child: Text('Read Full News'),
                  ),
                ),
                SizedBox(height: 20,),
              ],
            ),),
          ],
        ));
  }
}
