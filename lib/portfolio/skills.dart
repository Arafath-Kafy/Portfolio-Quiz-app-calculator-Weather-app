import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  final List<String> skills = [
    'Graphics Design',
    'Game Development',
    'Android Development',
    'Video Editing',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skills'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: skills
                    .map(
                      (skill) => Text(
                    '- $skill',
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
