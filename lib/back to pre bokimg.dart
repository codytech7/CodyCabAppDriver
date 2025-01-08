import 'dart:ui';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PreBookingDetailsScreen extends StatefulWidget {
  @override
  State<PreBookingDetailsScreen> createState() => _PreBookingDetailsScreenState();
}

class _PreBookingDetailsScreenState extends State<PreBookingDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text('Ryde App'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // Back navigation
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              label: const Text(
                'Back to Pre-Bookings',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Icons.directions_car, color: Colors.orange),
                ),
                const SizedBox(width: 16),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pre-Booking Ride',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      '12 Sep, 2023',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Route (5 km)',
              style: TextStyle(color: Colors.orange, fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                Icon(Icons.location_on, color: Colors.orange),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Pick Up: Street 123, Sector 4, Islamabad',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                Icon(Icons.location_on, color: Colors.orange),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Drop Off: Islamabad Shopping Mall',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              height: 150,
              color: Colors.grey[800],
              child: Center(
                child: Image.asset(
                  'lib/controler/assets/image/map3.png',
                  fit: BoxFit.cover, // Ensures the image covers the entire container
                  width: double.infinity, // Makes the image fit the container width
                  height: double.infinity, // Makes the image fit the container height
                ),
              ),
            ),
            // Container(
            //   height: 150,
            //   color: Colors.grey[800],
            //   decoration: const BoxDecoration(),
            //   // Placeholder for map
            //   child: Center(
            //     child: Image.asset(
            //       'lib/controler/assets/image/mp3.png',
            //
            //       // style: TextStyle(color: Colors.white),
            //     ),
            //   ),
            // ),
            const SizedBox(height: 18),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Fare',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                Text(
                  '75€',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pick up time',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                Text(
                  '12th March, 2023, 4:55 pm',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    onPressed: () {},
                    child: const Text('Accept'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.white),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    onPressed: () {},
                    child: const Text('Ignore', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}