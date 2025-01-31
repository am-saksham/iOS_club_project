import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Components/profile_options.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        backgroundColor: const Color(0xFF2A2829),
      ),
      body: Container(
        color: const Color(0xFF2A2829), // Set solid background color
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey.shade800,
                  child: const Icon(Icons.person, size: 50, color: Colors.white),
                ),
                const SizedBox(height: 20),
                Text(
                  'User Name',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8),
                // Display a placeholder email
                Text(
                  'user@example.com',
                  style: GoogleFonts.poppins(
                    color: const Color(0xFFC3B0FF),
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 20),
                ProfileOption(
                  icon: Icons.settings,
                  title: 'Account Settings',
                  onTap: () {
                    // Add settings functionality
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}