import 'package:flutter/material.dart';

class PassToDriverScreen extends StatefulWidget {
  const PassToDriverScreen({super.key});

  @override
  State<PassToDriverScreen> createState() => _PassToDriverScreenState();
}

class _PassToDriverScreenState extends State<PassToDriverScreen> {
  final TextEditingController _licenseController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ryde App"),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Pass to Another Driver",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _licenseController,
              decoration: const InputDecoration(
                labelText: "Enter driver's taxi license number",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _licenseController.clear();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                  ),
                  child: const Text("Cancel"),
                ),
                ElevatedButton(
                  onPressed: () {
                    String licenseNumber = _licenseController.text;
                    if (licenseNumber.isNotEmpty) {
                      // Add functionality for passing the driver
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Passed to driver with license: $licenseNumber"),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow.shade700,
                    foregroundColor: Colors.black,
                  ),
                  child: const Text("Confirm"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}