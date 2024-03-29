import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'quote.dart';

Widget quoteTemplate(quote) {
  return QuoteCard(quote);
}

Card QuoteCard(quote) {
  return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(quote.text,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey[600],
                  )),
              SizedBox(height: 6.0),
              Text(quote.author,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[800],
                  )),
              SizedBox(height: 8.0),
              TextButton.icon(
                onPressed: () {},
                label: Text("Delete Quote"),
                icon: Icon(Icons.delete),
              ),
            ],
          )));
}
