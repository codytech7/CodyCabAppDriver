import 'package:flutter/material.dart';

class RideAcceptedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          // Map placeholder
          Positioned.fill(
            child: Container(
              color: Colors.black54,
              child: Center(
                child: Image.asset(
                  'lib/Controller/asset/Map@2x.png',
                  fit: BoxFit.cover, // Corrected property
                ),
              ),
            ),
          ),

          // Back button
          Positioned(
            top: 40,
            left: 16,
            child: IconButton(
              onPressed: () {
                // Handle back action
              },
              icon: Icon(Icons.arrow_back, size: 28),
              color: Colors.white70,
            ),
          ),

          // Bottom details container
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xff2D3136),
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),


              ),
              child: SingleChildScrollView( // Prevent overflow issues
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Ride accepted message
                    Row(
                      children: [

                        Icon(Icons.check_circle, color: Colors.green, size: 20),
                        SizedBox(width: 8),
                        Text(

                          "Ride accepted",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Your customer is waiting at the pickup location.",
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                    SizedBox(height: 16),

                    // Customer details
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage:
                          AssetImage("lib/Controller/asset/psng.jpeg"),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Andrew Wilson",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star,
                                      color: Color(0xffF1AE17), size: 16),
                                  SizedBox(width: 4),
                                  Text(
                                    "4.9",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white70),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "\$75",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffF1AE17),
                          ),
                        ),
                      ],
                    ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffF1AE17),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  minimumSize: Size(double.infinity, 50.0),
                ),
                child: Text(
                  'Navgate',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor:Color(0xff2D3136),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  minimumSize: Size(double.infinity, 50.0),
                ),
                child: Text(
                  'Contact Customer',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

                      ],
                    ),

                ),
              ),
            ),

        ],
      ),
    );
  }
}
