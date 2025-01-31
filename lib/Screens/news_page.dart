// lib/components/news_page_content.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Components/news_card.dart'; // Import your NewsCard component

class NewsPageContent extends StatelessWidget {
  const NewsPageContent({super.key});

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
              'News',
              style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  color: Colors.white),
            ),
            const SizedBox(height: 20),
            const NewsCard(
              publisherName: 'ITNEWS.PRO',
              date: '07 OCT 2024',
              headline:
              'Only 5.5% of the Indian engineers are qualified with basic programming skills: Report',
              description:
              'To meet the skills needs 86% of Indian businesses are actively reskilling their IT workers, the study found.',
              imageUrl:
              'https://images.unsplash.com/photo-1484417894907-623942c8ee29?q=80&w=2832&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              logoUrl:
              'https://images.unsplash.com/photo-1707061229211-25325f7134ce?q=80&w=2962&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Replace with your image URL
            ),
            const NewsCard(
              publisherName: 'ITNEWS.PRO',
              date: '07 OCT 2024',
              headline:
              'Only 5.5% of the Indian engineers are qualified with basic programming skills: Report',
              description:
              'To meet the skills needs 86% of Indian businesses are actively reskilling their IT workers, the study found.',
              imageUrl:
              'https://images.unsplash.com/photo-1484417894907-623942c8ee29?q=80&w=2832&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              logoUrl:
              'https://images.unsplash.com/photo-1707061229211-25325f7134ce?q=80&w=2962&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Replace with your image URL
            ),
            const NewsCard(
              publisherName: 'ITNEWS.PRO',
              date: '07 OCT 2024',
              headline:
              'Only 5.5% of the Indian engineers are qualified with basic programming skills: Report',
              description:
              'To meet the skills needs 86% of Indian businesses are actively reskilling their IT workers, the study found.',
              imageUrl:
              'https://images.unsplash.com/photo-1484417894907-623942c8ee29?q=80&w=2832&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              logoUrl:
              'https://images.unsplash.com/photo-1707061229211-25325f7134ce?q=80&w=2962&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Replace with your image URL
            ),
            const NewsCard(
              publisherName: 'ITNEWS.PRO',
              date: '07 OCT 2024',
              headline:
              'Only 5.5% of the Indian engineers are qualified with basic programming skills: Report',
              description:
              'To meet the skills needs 86% of Indian businesses are actively reskilling their IT workers, the study found.',
              imageUrl:
              'https://images.unsplash.com/photo-1484417894907-623942c8ee29?q=80&w=2832&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              logoUrl:
              'https://images.unsplash.com/photo-1707061229211-25325f7134ce?q=80&w=2962&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Replace with your image URL
            ),
            const NewsCard(
              publisherName: 'ITNEWS.PRO',
              date: '07 OCT 2024',
              headline:
              'Only 5.5% of the Indian engineers are qualified with basic programming skills: Report',
              description:
              'To meet the skills needs 86% of Indian businesses are actively reskilling their IT workers, the study found.',
              imageUrl:
              'https://images.unsplash.com/photo-1484417894907-623942c8ee29?q=80&w=2832&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              logoUrl:
              'https://images.unsplash.com/photo-1707061229211-25325f7134ce?q=80&w=2962&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Replace with your image URL
            ),
          ],
        ),
      ),
    );
  }
}