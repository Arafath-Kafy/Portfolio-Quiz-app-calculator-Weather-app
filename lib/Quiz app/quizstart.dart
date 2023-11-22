import 'package:flutter/material.dart';
import 'package:labfinal/Quiz%20app/quiz.dart';

class QuizStartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Quiz App",
            style: TextStyle(fontSize: 30, color: Colors.orangeAccent),
          ),
        ),
        elevation: 0,
        titleSpacing: 20,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Quiz 1',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizScreen()),
                );
              },
              child: Text('Start Quiz'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.orangeAccent),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SavedScoresPage()), // Add SavedScoresPage
                );
              },
              child: Text('Saved Scores'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.blueAccent), // Change the button color here
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SavedScoresPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Add your logic to fetch and display saved scores here
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Saved Scores',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Center(
        child: Text(
          'Display saved scores here', // Add your logic to display saved scores
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
