import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpPage(),
    );
  }
}

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ryde App'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 16.0),
              const Text(
                'Sign Up as a Driver (2/2)',
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16.0),
              CircleAvatar(
                radius: 40.0,
                backgroundImage: const NetworkImage('lib/assets/image/ryde.png '), // Replace with actual image
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.yellow,
                    ),
                    child: const Icon(Icons.camera_alt, color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              _buildTextField('Enter car make and model'),
              const SizedBox(height: 16.0),
              _buildTextField('Enter car registration number'),
              const SizedBox(height: 16.0),
              _buildTextField('Enter taxi license number', maxLength: 7),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: RadioListTile(
                      title: const Text('Taxi Owner'),
                      value: 'owner',
                      groupValue: 'employee', // Change based on state
                      onChanged: (value) {},
                    ),
                  ),
                  Expanded(
                    child: RadioListTile(
                      title: const Text('Employee'),
                      value: 'employee',
                      groupValue: 'employee', // Change based on state
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              _buildTextField("Enter owner's DNI"),
              const SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () {
                  // Handle submission
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text(
                  'Submit for Approval',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String hint, {int? maxLength}) {
    return TextField(
      maxLength: maxLength,
      decoration: InputDecoration(
        labelText: hint,
        border: const OutlineInputBorder(),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
      ),
    );
  }
}