import 'package:flutter/material.dart';

class RideFeedbackScreen extends StatefulWidget {
  @override
  _RideFeedbackScreenState createState() => _RideFeedbackScreenState();
}

class _RideFeedbackScreenState extends State<RideFeedbackScreen> {
  int _selectedRating = 0;
  bool _isFavorite = false;
  TextEditingController _feedbackController = TextEditingController();

  Widget _buildStar(int index) {
    return IconButton(
      onPressed: () {
        setState(() {
          _selectedRating = index;
        });
      },
      icon: Icon(
        Icons.star,
        color: index <= _selectedRating ? Colors.orange : Colors.grey,
        size: 30,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //appBar: AppBar(
      //title: Text("Ride Feedback"),
      //backgroundColor: Colors.orange,
      //),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Background image
            Container(
              height: 200, // Adjust the height as needed
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("lib/asset/Map.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Ride complete",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Rate your passenger.",
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Your Rating",
                  ),
                  // Rating stars
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(5, (index) => _buildStar(index + 1)),
                  ),
                  Text("Your Feedback(optional)"),
                  SizedBox(height: 10),
                  // Feedback text field
                  TextField(
                    controller: _feedbackController,
                    decoration: InputDecoration(
                      // labelText: "Your Feedback (optional)",
                      border: OutlineInputBorder(),
                    ),
                    maxLines: 2,
                  ),
                  SizedBox(height: 10),

                  SizedBox(height: 50),
                  // Submit button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle submission logic here
                        print("Rating: $_selectedRating");
                        print("Feedback: ${_feedbackController.text}");
                        print("Favorite: $_isFavorite");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:  Color(0xffF1AE17),
                        padding: EdgeInsets.symmetric(vertical: 10),
                      ),
                      child: Text(
                        "Submit",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
