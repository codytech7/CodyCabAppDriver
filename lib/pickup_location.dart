import 'package:flutter/material.dart';


class PickupLocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff535353),
      body: Stack(
        children: [
          // Map background
          Positioned.fill(
            child: Image.asset(
              'lib/controller/asset/Map@2x.png', // Ensure this path is correctly set in pubspec.yaml
              fit: BoxFit.cover, // Adjust image scaling
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Color(0xff2D3136),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Reached Pickup Location',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'The customer has been notified of your arrival. Make sure you pick up the right customer.',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('lib/controller/asset/psng.jpeg'), // Replace with a real image
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Andrew Wilson',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color(0xffF1AE17),
                                  size: 16,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  '4.9',
                                  style: TextStyle(fontSize: 14,color: Colors.white70),

                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        '\$75',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(0xffF1AE17),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        // Navigation action
                      },
                      child: const Text(
                        'Start Navigation',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
