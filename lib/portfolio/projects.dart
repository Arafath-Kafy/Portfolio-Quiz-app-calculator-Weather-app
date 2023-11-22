import 'package:flutter/material.dart';
import '../Quiz app/quizstart.dart';
import '../calculator/calculator.dart';
import '../weather/weatherintro.dart';



void main() {
  runApp(ProjectsScreen());
}

class ProjectsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projects',
      theme: ThemeData(
        primaryColor: Colors.black,
        colorScheme: ColorScheme.dark(
          primary: Colors.blue,
          onPrimary: Colors.white,
        ),
        fontFamily: 'Roboto',
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/projects',
      routes: {
        '/projects': (context) => ProjectsPage(),
        '/quiz': (context) => QuizStartPage(),
        '/calculator': (context) => CalculatorScreen(),
        '/weather': (context) => WeatherScreen(),
      },
    );
  }
}

class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Projects'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: ListView(
          children: [
            ListTile(
              title: Text(
                'Quiz App',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/quiz');
              },
            ),
            ListTile(
              title: Text(
                'Calculator App',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/calculator');
              },
            ),
            ListTile(
              title: Text(
                'Weather App',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/weather');
              },
            ),
          ],
        ),
      ),
    );
  }
}
