// lib/components/events_page_content.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Components/event_card.dart'; // Import your EventCard component

class EventsPageContent extends StatelessWidget {
  const EventsPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF2A2829), // Solid background color for content
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Upcoming Events',
              style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  color: Colors.white),
            ),
            const EventCard(
              headline: 'GameFlix 3.0',
              date: '20th Feb 2025',
              time: '11:00 AM- 02:00 PM',
              clubName: 'iOS Club',
              imageUrl:
              'https://images.unsplash.com/photo-1693480594469-fafdeb4d00f5?q=80&w=2960&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              googleFormUrl: 'https://forms.gle/BWPPCiDY4sXuLf9W8',
            ),
            const EventCard(
              headline: 'Dance Workshop',
              date: '18th Oct 2024',
              time: '10:00 - 13:00',
              clubName: 'Dance Club',
              imageUrl:
              'https://images.unsplash.com/photo-1712220403561-bcf3f59d5927?q=80&w=2500&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              googleFormUrl:
              'https://forms.gle/BWPPCiDY4sXuLf9W8',
            ),
            const EventCard(
              headline: 'Badminton',
              date: '2nd Nov 2024',
              time: '9:00 - 13:00',
              clubName: 'Sports Club',
              imageUrl:
              'https://images.unsplash.com/photo-1712220403561-bcf3f59d5927?q=80&w=2500&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              googleFormUrl: 'https://forms.gle/BWPPCiDY4sXuLf9W8',
            ),
          ],
        ),
      ),
    );
  }
}