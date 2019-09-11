import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = "You've reached the limit of questions. Score: $resultScore";
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget> [
          Text(
            resultPhrase, 
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          RaisedButton(child: Text('Restart Quiz'), onPressed: resetHandler,)
        ],
      ),
    );
  }
}
