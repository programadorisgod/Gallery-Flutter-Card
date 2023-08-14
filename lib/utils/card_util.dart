import 'package:flutter/material.dart';

List<Widget> card(String url, String description, String name) {
  final card = Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(name, textAlign: TextAlign.center),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: FadeInImage(
          placeholder: AssetImage('assets/loading-2.gif'),
          image: NetworkImage(url),
          fadeInDuration: Duration(seconds: 2),
          height: 250.0,
          fit: BoxFit.cover,
        ),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(description),
      ),
      Container(padding: EdgeInsets.all(12.0)),
      Padding(padding: EdgeInsets.all(8.0)),
    ],
  );

  return [
    Container(
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        color: Colors.white70,
        boxShadow: const <BoxShadow>[
          BoxShadow(
              color: Colors.black54,
              blurRadius: 5.0,
              spreadRadius: 2.0,
              offset: Offset(0.0, 5.0))
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40.0),
        child: card,
      ),
    )
  ];
}
