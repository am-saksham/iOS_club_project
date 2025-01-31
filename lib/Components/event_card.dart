import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Screens/form_page.dart';

class EventCard extends StatelessWidget {
  final String headline;
  final String date;
  final String time;
  final String clubName;
  final String imageUrl;
  final String googleFormUrl;

  const EventCard({
    Key? key,
    required this.headline,
    required this.date,
    required this.time,
    required this.clubName,
    required this.imageUrl,
    required this.googleFormUrl,
  }) : super(key: key);

  Future<void> _launchURL() async {
    final Uri url = Uri.parse(googleFormUrl);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $googleFormUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF433F3F),
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(17.0),
      ),
      child: Column(
        children: [
          // Top section
          Padding(
            padding: const EdgeInsets.only(left: 22.0, right: 22.0, top: 22.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  headline,
                  style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 22.0, right: 15.0, top: 8.0, bottom: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  clubName,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: const Color(0xFF95EAFF),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),

          // Middle section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0)
                .copyWith(bottom: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Date and time section
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.calendar_today,
                            size: 24, color: Color(0xFFC3B0FF)),
                        const SizedBox(width: 8),
                        Text(
                          date,
                          style: GoogleFonts.poppins(
                              fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Icon(Icons.access_time,
                            size: 24, color: Color(0xFFC3B0FF)),
                        const SizedBox(width: 8),
                        Text(
                          time,
                          style: GoogleFonts.poppins(
                              fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                // Image section
                Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Bottom section
          Padding(
            padding:
            const EdgeInsets.only(left: 28.0, right: 28.0, bottom: 28.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => BlackBackgroundScreen())
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFDFEB8A),
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    )),
                child: Text('More Info',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF2A2829),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
