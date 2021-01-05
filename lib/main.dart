import 'package:flutter/material.dart';
import 'quote.dart';

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

  Widget quoteTemplate(quote) {
    return Card(
      margin: EdgeInsets.all(15.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.grey[900],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              quote.author,
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        backgroundColor: Colors.red[800],
        title: Text('List of Quotes'),
        elevation: 20.00,
        shadowColor: Colors.red[870],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 0.0),
        child: Column(
          children: quotes.map((quote) => quoteTemplate(quote)).toList(),
        ),
      ),
    );
  }
}
