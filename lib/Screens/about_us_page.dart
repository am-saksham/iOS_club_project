import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // flexibleSpace: Container(
        //   decoration: const BoxDecoration(
        //     gradient: LinearGradient(
        //       begin: Alignment.topLeft,
        //       end: Alignment.topRight,
        //       colors: <Color>[
        //         Color.fromARGB(1, 43, 40, 41),
        //       ],
        //     ),
        //   ),
        // ),
        title: const Text(
          'About Us',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context); // Close About Us screen
          },
        ),
        backgroundColor: const Color.fromARGB(255, 40, 38, 38),
      ),
      backgroundColor: const Color.fromARGB(255, 40, 38, 38),
      // decoration: const BoxDecoration(
      //   gradient: LinearGradient(
      //     begin: Alignment.topCenter,
      //     end: Alignment.bottomCenter,
      //     colors: [
      //       Color.fromARGB(1, 43, 40, 41),
      //       // Color(0xFF001932),
      //       // Color(0xFF002D48),
      //       // Color(0xFF004460),
      //     ],
      //   ),
      // ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              "This app is the only platform where you can get all the latest details about what’s happening on campus. From events to updates, we provide it all.\nIt is an event booking and management app where students of VIT Bhopal University can explore upcoming events organized by university clubs and register for them directly through the app.",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  _showRateAppDialog(context); // Show rate app dialog
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, // Button background color
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 12.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Text(
                  'Rate App',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ),
            const Spacer(),
            const Center(
              child: Text(
                '©️ 2024 IOS Club, VIT Bhopal',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showRateAppDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: const Text('Connect to the backend to submit your rating.'),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
          ],
        );
      },
    );
  }
}
