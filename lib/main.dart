import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQestion() {
    print('Answer chosen!!!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favorite color?',
      'what\'s your favorite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[0]),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: answerQestion,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              // Anonymous function 1
              onPressed: () => print('Answer 2 Chosen!!'),
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              // Anonymous function 2
              onPressed: () {
                // ...
                print('Answer 3 Chosen!!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
