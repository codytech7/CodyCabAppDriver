import 'package:flutter/material.dart';



class CancelRide extends StatefulWidget {
  @override
  _CancelRideState createState() => _CancelRideState();
}

class _CancelRideState extends State<CancelRide> {
  String? selectedReason;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2D3136), // Background color
      body: Center(
        child: Container(
          width: 350, // Set a fixed width for the dialog
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color(0xff1C1F24), // Dialog background color
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Cancel Ride',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Please provide a reason for cancelling this ride.',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 16),
              RadioListTile<String>(
                value: "Can't make a on time",
                groupValue: selectedReason,
                onChanged: (value) {
                  setState(() {
                    selectedReason = value;
                  });
                },
                activeColor: Color(0xffF1AE17),
                title: Text(
                  "Pickp point is too far away",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              RadioListTile<String>(
                value: "Inebriated/Disorderly passenger",
                groupValue: selectedReason,
                onChanged: (value) {
                  setState(() {
                    selectedReason = value;
                  });
                },
                activeColor:Color(0xffF1AE17),
                title: Text(
                  "Inebriated/Disorderly passenger",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              RadioListTile<String>(
                value: "Reason not listed",
                groupValue: selectedReason,
                onChanged: (value) {
                  setState(() {
                    selectedReason = value;
                  });
                },
                activeColor: Color(0xffF1AE17),
                title: Text(
                  "Reason not listed",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      // Action for "Go Back"
                    },
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.grey),
                      padding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    ),
                    child: Text(
                      'Go Back',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Action for "Cancel Ride"
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffF1AE17),
                      padding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    ),
                    child: Text(
                      'Cancel Ride',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
