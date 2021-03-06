import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
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
            SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(Icons.delete),
                onPressed: delete,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
