import 'package:flutter/material.dart';
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
        text: 'One cannot separate prunes from determined foxes.',
        author: 'Oscar Wilde'),
    Quote(
        text: 'Their nectarine was, in this moment, a powerful grapefruit.',
        author: 'Oscar Wilde'),
    Quote(
        text: 'Some posit the rational frog to be less than happy.',
        author: 'Oscar Wilde'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('List of Quotes'),
        elevation: 20.00,
        shadowColor: Colors.red[870],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 0.0),
        child: Column(
          children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
        ),
      ),
    );
  }
}
