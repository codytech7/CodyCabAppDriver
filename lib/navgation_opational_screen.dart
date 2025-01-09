import 'package:flutter/material.dart';

class NavigationOptionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xff272B2F), // Background color
      body: Center(
        child: Container(
          width: 320, // Set a fixed width for the dialog
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color(0xff1C1F24), // Dialog background color
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                'Start Navigation',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),

              // Google Maps Option
              GestureDetector(
                onTap: () {
                  // Handle Google Maps navigation logic here
                },
                child: Row(
                  children: [
                    Icon(Icons.location_pin, color: Color(0xffF1AE17)),
                    SizedBox(width: 10),
                    Text(
                      'Google Maps',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),

              // Waze Option
              GestureDetector(
                onTap: () {
                  // Handle Waze navigation logic here
                },
                child: Row(
                  children: [
                    Icon(Icons.emoji_emotions, color: Color(0xffF1AE17)),
                    SizedBox(width: 10),
                    Text(
                      'WAZE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),

              // Close Button
              Center(
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context); // Close the dialog
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.grey),
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 32),
                  ),
                  child: Text(
                    'Close',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
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


