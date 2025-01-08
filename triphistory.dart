import 'package:flutter/material.dart';
class TripHistoryScreen extends StatefulWidget {
   const TripHistoryScreen({super.key});

  @override
  State<TripHistoryScreen> createState() => _TripHistoryScreenState();
}

class _TripHistoryScreenState extends State<TripHistoryScreen> {
  final List<Map<String, String>> trips = [
    {'from': 'Street 123, Sector 4', 'to': 'Islamabad Shopping Mall'},
    {'from': 'Street 123, Sector 4', 'to': 'Islamabad Shopping Mall'},
    {'from': 'Street 123, Sector 4', 'to': 'Islamabad Shopping Mall'},
    {'from': 'Street 123, Sector 4', 'to': 'Islamabad Shopping Mall'},
    {'from': 'Street 123, Sector 4', 'to': 'Islamabad Shopping Mall'},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ryde App'),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Trips History',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle Overview tab tap
                      },
                      child: const Text(
                        'Overview',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ),
                    const SizedBox(width: 16),
                    GestureDetector(
                      onTap: () {
                        // Handle Trips tab tap
                      },
                      child: const Text(
                        'Trips',
                        style: TextStyle(color:Color(0xffF1AE17), fontSize: 16),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: trips.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.location_on, color: Colors.orange),
                  title: Text('From: ${trips[index]['from']}'),
                  subtitle: Text('To: ${trips[index]['to']}'),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 4,
        selectedItemColor:Color(0xffF1AE17),
        unselectedItemColor: Colors.grey,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          const BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }
}