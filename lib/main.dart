import 'package:flutter/material.dart';
import 'Quote.dart';
import 'QuoteCard.dart';
void main() => runApp(MaterialApp(home: QuoteList()));

//class NinjaCard extends StatefulWidget {
//  @override
//  NinjaCardState createState() {
//    return new NinjaCardState();
//  }
//}

//class NinjaCardState extends State<NinjaCard> {
//  int level = 0;
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Colors.grey[900],
//      appBar: AppBar(
//        title: Text("ID Card"),
//        centerTitle: true,
//        backgroundColor: Colors.grey[850],
//        elevation: 0.0,
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: () {
//          setState(() {
//            level += 1;
//          });
//        },
//        child: Icon(Icons.add),
//        backgroundColor: Colors.grey[800],
//      ),
//      body: Padding(
//        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.start,
//          children: <Widget>[
//            Center(
//              child: CircleAvatar(
//                backgroundImage: AssetImage('Assets/cover.png'),
//                radius: 40.0,
//              ),
//            ),
//            Divider(
//              height: 90.0,
//              color: Colors.grey[800],
//            ),
//            Text('Name',
//                style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
//            SizedBox(
//              height: 10.0,
//            ),
//            Text('Usman',
//                style: TextStyle(
//                    color: Colors.amber[200],
//                    letterSpacing: 2.0,
//                    fontSize: 28.0,
//                    fontWeight: FontWeight.bold)),
//            SizedBox(
//              height: 30.0,
//            ),
//            Text('Level',
//                style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
//            SizedBox(
//              height: 10.0,
//            ),
//            Text('$level',
//                style: TextStyle(
//                    color: Colors.amber[200],
//                    letterSpacing: 2.0,
//                    fontSize: 28.0,
//                    fontWeight: FontWeight.bold)),
//            SizedBox(
//              height: 30.0,
//            ),
//            Row(
//              children: <Widget>[
//                Icon(Icons.email, color: Colors.grey[400]),
//                SizedBox(width: 10.0),
//                Text(
//                  'usman@gmail.com',
//                  style: TextStyle(
//                      color: Colors.grey[400],
//                      fontSize: 18.0,
//                      letterSpacing: 1.0),
//                ),
//              ],
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: 'Oscar Wilde',
        text: 'Be yourself; Everybody else is already taken'),
    Quote(
        author: 'Oscar Wilde',
        text: 'I have nothing to declare except my genius'),
    Quote(
        author: 'Oscar Wilde',
        text: 'The truth is rarely pure and never simple'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quote'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: (Column(
        children: quotes
            .map((quote) =>  QuoteCard(
            quote: quote,
            delete :(){
              setState(() {
                quotes.remove(quote);
              });
            }
        ))
            .toList(),
      )),
    );
  }
}


