import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final String publisherName;
  final String date;
  final String headline;
  final String description;
  final String imageUrl;
  final String logoUrl; // Add a new parameter for the publisher logo image URL

  const NewsCard({
    Key? key,
    required this.publisherName,
    required this.date,
    required this.headline,
    required this.description,
    required this.imageUrl,
    required this.logoUrl, // Include the logo URL in the constructor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(17.0), // Outer box border radius
      ),
      elevation: 4,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF433F3F), // Outer background color
          borderRadius: BorderRadius.circular(17.0), // Outer box border radius
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Group1: Publisher info
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  // Small square box for publisher logo (converted to an image)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(6.0), // Square box border radius
                    child: Image.network(
                      logoUrl, // Load image from URL
                      width: 35,
                      height: 35,
                      fit: BoxFit.cover, // Cover the entire area of the square
                    ),
                  ),
                  const SizedBox(width: 10),
                  // Publisher name and date in a Column
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center, // Centering content
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        publisherName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      // Date below the publisher name
                      Text(
                        date,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w300
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8.0),
            // Inner green box for news content with padding
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17.0).copyWith(bottom: 17.0), // Gap of 17px on left, right, and bottom
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFDFEB8A), // Green box background
                  borderRadius: BorderRadius.circular(10.0), // Green box border radius
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Headline
                      Text(
                        headline,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      // Description
                      Text(
                        description,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      // News image
                      Container(
                        width: double.infinity, // Make the image take full width
                        height: 150, // Adjust height as needed
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0), // Image box border radius
                          image: DecorationImage(
                            image: NetworkImage(imageUrl), // Load image from URL
                            fit: BoxFit.cover,
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
      ),
    );
  }
}