import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  final String email = 'arafathkafy@gmail.com';
  final String phone = '0140065916';
  final String facebook = 'facebook.com/arafathkafy';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
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
              Text(
                'My Contact Information:',
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
              SizedBox(height: 20),
              Text(
                'Email: $email',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
              SizedBox(height: 10),
              Text(
                'Phone: $phone',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
              SizedBox(height: 10),
              Text(
                'Facebook: $facebook',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
