import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<String> quotes = [
    'One cannot separate prunes from determined foxes.',
    'Their nectarine was, in this moment, a powerful grapefruit.',
    'Some posit the rational frog to be less than happy.',
  ];

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
      body: Column(
        children: quotes.map((quote) => Text(quote)).toList(),
      ),
    );
  }
}
