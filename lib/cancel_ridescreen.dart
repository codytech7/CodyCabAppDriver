import 'package:flutter/material.dart';

class CancelRideScreen extends StatefulWidget {
  @override
  _CancelRideScreenState createState() => _CancelRideScreenState();
}

class _CancelRideScreenState extends State<CancelRideScreen> {
  String selectedReason = 'Can’t make it on time';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cancel Ride'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showCancelDialog(context),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xffF1AE17),
          ),
          child: Text(
            'Cancel Ride',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  void _showCancelDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Color(0xFF1E1E1E), // Dark background
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          title: Text(
            'Cancel Ride',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Please provide a reason for cancelling this ride.',
                style: TextStyle(color: Colors.grey[300]),
              ),
              SizedBox(height: 20),
              RadioListTile<String>(
                activeColor: Color(0xffF1AE17),
                title: Text(
                  'Can’t make it on time',
                  style: TextStyle(color: Colors.white),
                ),
                value: 'Can’t make it on time',
                groupValue: selectedReason,
                onChanged: (value) {
                  setState(() {
                    selectedReason = value!;
                  });
                  Navigator.pop(context);
                  _showCancelDialog(context); // To reflect the change instantly
                },
              ),
              RadioListTile<String>(
                activeColor:Color(0xffF1AE17),
                title: Text(
                  'Pickup point is too far away',
                  style: TextStyle(color: Colors.white),
                ),
                value: 'Pickup point is too far away',
                groupValue: selectedReason,
                onChanged: (value) {
                  setState(() {
                    selectedReason = value!;
                  });
                  Navigator.pop(context);
                  _showCancelDialog(context);
                },
              ),
              RadioListTile<String>(
                activeColor: Color(0xffF1AE17),
                title: Text(
                  'Reason not listed',
                  style: TextStyle(color: Colors.white),
                ),
                value: 'Reason not listed',
                groupValue: selectedReason,
                onChanged: (value) {
                  setState(() {
                    selectedReason = value!;
                  });
                  Navigator.pop(context);
                  _showCancelDialog(context);
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              style: TextButton.styleFrom(
                foregroundColor: Colors.grey[400], // Button text color
              ),
              child: Text('Go Back'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                print('Ride cancelled due to: $selectedReason');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:Color(0xffF1AE17),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              child: Text(
                'Cancel Ride',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        );
      },
    );
  }
}

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: CancelRideScreen(),
));
