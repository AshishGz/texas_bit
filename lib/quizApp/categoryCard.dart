import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  String title;
  CategoryCard({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
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
      child: Text(title,
        textAlign: TextAlign.center,
        style: TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 30
      ),),);
  }
}
