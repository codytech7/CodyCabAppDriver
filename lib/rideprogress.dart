import 'package:flutter/material.dart';
//import "package:google_maps_flutter/google_maps_flutter.dart";

class RideProgressScreen extends StatelessWidget {
  RideProgressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Color(0xff2D3136),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "lib/Controller/asset/Map@2x.png",
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
                color:Color(0xff2D3136),
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff2D3136).withOpacity(0.1),
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
                    'Ride in progress',
                    style: TextStyle(
                      fontSize: 18,color: Color(0xffF1AE17),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Estimated time to destination',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    '15 minutes.',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  //const SizedBox(height: 16),
                  //const Text(
                    //"You're almost there! Finish the ride at the destination.",
                    //textAlign: TextAlign.center,
                    //style: TextStyle(
                      //fontSize: 14,
                      //color: Colors.grey,
                    //),
                  //),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Handle payment navigation
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff2D3136),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 50,
                      ),
                    ),
                    child: const Text(
                      'End Trip Early',
                      style: TextStyle(fontSize: 16, color: Colors.red),
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
