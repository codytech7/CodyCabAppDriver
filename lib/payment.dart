import 'package:flutter/material.dart';


class DestinationReached extends StatelessWidget {
  DestinationReached({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Color(0xff2D3136),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "lib/Controller/asset/Map@2x.png", // Replace with your map image path
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
                color: Color(0xff2D3136),
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
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
                    'Destination reached',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
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
                    '1 minute.',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffffffff),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "You're almost there! Finish the ride at the destination.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Handle navigation to the payment screen
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffF1AE17),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 24,
                      ),
                    ),
                    child: const Text(
                      'Complete & Go to Payment',
                      style: TextStyle(fontSize: 16, color: Colors.white),
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
