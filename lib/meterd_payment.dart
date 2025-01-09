import 'package:flutter/material.dart';

class MeteredPayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2D3136),
      body: Stack(
        children: [
          // Placeholder for the map background
          Image.asset(
            'lib/controller/asset/Map@2x.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color(0xff2D3136),
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Destination reached',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Enter fare amount',
                      hintStyle: TextStyle(color: Color(0xff2D3136)),
                      filled: true,
                      fillColor: Colors.grey[700],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Action when the button is pressed
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffF1AE17),
                      padding: EdgeInsets.symmetric(vertical: 14.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Confirm Fare Amount',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
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
