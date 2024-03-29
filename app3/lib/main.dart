import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: "Oscar wilde",
        text: "Be u'r self everyone else is already taken"),
    Quote(
        author: "Sydney sheldon",
        text: "I have nothing to declare except my genius"),
    Quote(author: "Shakespear", text: "The truth is rarely pure"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text(
            "Awesome Quotes",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: quotes.map((quote) {
            return quoteTemplate(quote);
          }).toList(),
        ));
  }
}
