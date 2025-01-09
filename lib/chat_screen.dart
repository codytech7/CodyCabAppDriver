import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2D3136), // Background color
      body: Column(
        children: [
          // Map background or placeholder
          Image.asset(
            "lib/controller/asset/Map@2x.png",
            fit: BoxFit.cover,
            width: double.infinity,
            height: 200, // Set a specific height for the map section
          ),

          // Chat messages
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16.0),
              children: [
                // Sender message
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.all(12),
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),

                // Receiver message
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: EdgeInsets.all(12),
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.orange.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),

                // Another sender message
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.all(12),
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Input box
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4.0,
                  spreadRadius: 2.0,
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Message your customer",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 8),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // Attach file action
                  },
                  icon: Icon(Icons.attach_file, color: Colors.grey),
                ),
                IconButton(
                  onPressed: () {
                    // Send message action
                  },
                  icon: Icon(Icons.send, color: Color(0xffF1AE17)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

