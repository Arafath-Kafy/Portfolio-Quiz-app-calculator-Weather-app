import 'package:flutter/material.dart';
import 'package:labfinal/portfolio/projects.dart';
import 'package:labfinal/portfolio/skills.dart';

import 'contacts.dart';

void main() {
  runApp(MyPortfolioApp());
}

class Project {
  final String name;
  final String description;

  Project({required this.name, required this.description});
}

class MyPortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MY Portfolio',
      theme: ThemeData(
        primaryColor: Colors.black,
        colorScheme: ColorScheme.dark(
          primary: Colors.blue,
          onPrimary: Colors.white,
        ),
        fontFamily: 'Roboto',
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePageContent(),
    ProjectsScreen(),
    ContactPage(),
    SkillsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Portfolio'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Portfolio Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
            ListTile(
              title: Text('Projects'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProjectsScreen()),
                );
              },
            ),
            ListTile(
              title: Text('Contact'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactPage()),
                );
              },
            ),
            ListTile(
              title: Text('Skills'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SkillsPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work, color: Colors.white,),
            label: 'Projects',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts, color: Colors.white,),
            label: 'Contact',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star, color: Colors.white,),
            label: 'Skills',
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.6),
      ),
    );
  }
}

class HomePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20.0),
              CircleAvatar(
                radius: 90.0,
                backgroundImage: AssetImage('assets/formal pic.png'),
              ),
              SizedBox(height: 20.0),
              Text(
                'MD. Arafath Kafy',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                'Student of Computer Science and Engineering',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 20.0),
              Card(
                color: Colors.grey[800],
                elevation: 5.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Assalamualaikum, I am Md. Arafath Kafy. A student of Computer Science and Engineering. "
                        "Dreaming to be a qualified Computer Engineer. "
                        "Thinking about setting my career in Software quality assurance sector."
                        "Lot of thinks to be learned."
                        "My home town is Munshiganj."
                        "Though I grew up in Dhaka."
                        "I am the youngest son of my parents among their two sons."
                        "I am a Fast learner, And like to learn things by myself which I don't need any help to learn. "
                        "I like to finish my work on time."
                        "That's why the deadline matters a lot to me"
                        "I like to lead a disciplined life."
                        "There is more about me. If you are interested contact me through my given contact information. Have a good day",
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EducationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Education'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Your Education Details Here',
            style: TextStyle(fontSize: 18.0, color: Colors.white),
          ),
        ),
      ),
    );
  }
}


