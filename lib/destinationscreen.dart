import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class AppColors {
  static const Color appSecondaryColor = Color(0xff272B2F);
  static const Color appPrimaryColor = Color(0xffF1AE17);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const DestinationScreen(),
    );
  }
}

class DestinationScreen extends StatelessWidget {
  const DestinationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // title: const Text('Ryde App'),
        backgroundColor: AppColors.appSecondaryColor,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "lib/controller/asset/Map@2x.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Destination reached',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Please input the fare amount:',
                    style: TextStyle(fontSize: 16.0, color: Colors.white70),
                  ),
                  const SizedBox(height: 10),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter fare amount',
                      hintStyle: TextStyle(color: Colors.white70, fontSize: 16.0),
                    ),
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.appPrimaryColor, // Button color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      onPressed: () {
                        // Handle button press
                      },
                      child: const Text(
                        'Confirm Fare Amount',
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
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
