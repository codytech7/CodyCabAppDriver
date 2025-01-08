import 'package:flutter/material.dart';

class PreBookingsScreen extends StatefulWidget {
  @override
  State<PreBookingsScreen> createState() => _PreBookingsScreenState();
}

class _PreBookingsScreenState extends State<PreBookingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ryde App'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.black,
            padding: const EdgeInsets.symmetric(vertical:9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildTabButton(context, 'All', true),
                _buildTabButton(context, 'Accepted', false),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return _buildBookingCard();
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Bookings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            label: 'Reports',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildTabButton(BuildContext context, String title, bool isSelected) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
        decoration: BoxDecoration(
          color: isSelected ? Colors.orange : Colors.black,
          borderRadius: BorderRadius.circular(3),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.black : Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildBookingCard() {
    return const Padding(
      padding: EdgeInsets.all(7.0),
      child: Card(
        color: Color(0xFF1A1A1A),
        child: Padding(
          padding: EdgeInsets.all(11.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.location_on, color: Colors.orange),
                  SizedBox(width: 7),
                  Text(
                    'From',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Text(
                'Street 123, Sector 4',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 6),
              Row(
                children: [
                  Icon(Icons.location_on, color: Colors.orange),
                  SizedBox(width: 6),
                  Text(
                    'To',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Text(
                'Islamabad Shopping Mall',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 8),
              Text(
                'Taxi Metered     4:55 pm, 12th March',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}