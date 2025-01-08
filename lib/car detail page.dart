import 'package:flutter/material.dart';

class CarDetailsPage extends StatefulWidget {
  const CarDetailsPage({super.key});

  @override
  State<CarDetailsPage> createState() => _CarDetailsPageState();
}

class _CarDetailsPageState extends State<CarDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.black12,
        elevation: 0,
        title: const Text(
        'Car Details (2/2)',
        style: TextStyle(color: Colors.white54),
    ),
    centerTitle: true,
    leading: IconButton(
    icon: const Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () {},
    ),
    ),
    body: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    const Center(
    child: Stack(
    alignment: Alignment.bottomRight,
    children: [
    CircleAvatar(
    radius: 50,
    backgroundImage: NetworkImage(' lib/assets/image/profile.jpeg  '),
    ),
    CircleAvatar(
    radius: 15,
    backgroundColor: Colors.yellow,
    child: Icon(Icons.edit, color: Colors.white, size: 16),
    ),
    ],
    ),
    ),
    const SizedBox(height: 24),
    const TextField(
    decoration: InputDecoration(
    labelText: 'Car Make & Model',
    border: OutlineInputBorder(),
    ),
    ),
    const SizedBox(height: 16),
    const TextField(
    decoration: InputDecoration(
    labelText: 'Car Registration Number',
    border: OutlineInputBorder(),
    ),
    ),
    const SizedBox(height: 16),
    const TextField(
    decoration: InputDecoration(
    labelText: 'Taxi License Number',
    border: OutlineInputBorder(),
    ),
    ),
    const SizedBox(height: 16),
    Row(
    children: [
    Expanded(
    child: ListTile(
      contentPadding: EdgeInsets.zero,
    title: const Text('Taxi Owner' ),
      leading: Radio(
    value: 'Taxi Owner',
      groupValue: 'Taxi Owner',
    onChanged: (value) {},
    ),
    ),
    ),


    Expanded(
    child: ListTile(
    contentPadding: EdgeInsets.zero,
    title: const Text('Employee'),
      leading: Radio(
    value: 'Employee',
    groupValue: 'Taxi Owner',
        onChanged: (value) {},

    ),
    ),
    ),
    ],
    ),
    const SizedBox(height: 16),
    TextField(
    decoration: InputDecoration(
    labelText: 'Consent Letter',
    border: const OutlineInputBorder(),
    suffixIcon: IconButton(
    icon: const Icon(Icons.attach_file),
    onPressed: () {},
    ),
    ),
    ),
    Align(
    alignment: Alignment.centerRight,
    child: TextButton(
    onPressed: () {},
    child: Text(
    'Download Consent File',
    style: TextStyle(color: Colors.yellow[700]),
    ),
    ),
    ),
    const Spacer(),
    SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.yellow[700],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {},
        child: const Text('Submit for Approval'),
      ),
    ),
    ],
    ),
    ),
    );
  }
}