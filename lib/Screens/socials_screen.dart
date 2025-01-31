import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialsScreen extends StatelessWidget {
  const SocialsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 38, 38),
      // Allow gradient background
      appBar: AppBar(
        // flexibleSpace: Container(
        //   decoration: const BoxDecoration(
        //     gradient: LinearGradient(
        //       begin: Alignment.topCenter,
        //       end: Alignment.bottomRight,
        //       colors: <Color>[
        //         Color(0xFF00021C),
        //       ],
        //     ),
        //   ),
        // ),
        title: const Text(
          'Socials',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 40, 38, 38),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body:
      // decoration: const BoxDecoration(
      //   gradient: LinearGradient(
      //     begin: Alignment.topCenter,
      //     end: Alignment.bottomCenter,
      //     colors: [
      //       Color(0xFF00021C),
      //       Color(0xFF001932),
      //       Color(0xFF002D48),
      //       Color(0xFF004460),
      //     ],
      //   ),
      // ),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Follow us on our social platforms:',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildIconButton(
                    FontAwesomeIcons.youtube,
                    'https://www.youtube.com/@iosclubvitbhopal',
                    const Color(0xFFFF0000)),
                _buildIconButton(
                    FontAwesomeIcons.instagram,
                    'https://www.instagram.com/iosclub_vitb/',
                    const Color(0xFFC13584)),
                _buildIconButton(FontAwesomeIcons.globe,
                    'https://iosclub-vitb.github.io', const Color(0xFF0A66C2)),
                _buildIconButton(
                    FontAwesomeIcons.linkedinIn,
                    'https://www.linkedin.com/company/ios-club-vit-bhopal',
                    const Color(0xFF0A66C2)),
                _buildIconButton(FontAwesomeIcons.github,
                    'https://github.com/iosclub-vitb', Colors.white54),
              ],
            ),
            const Spacer(),
            const Text(
              '©️ 2024 IOS Club, VIT Bhopal',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  IconButton _buildIconButton(IconData icon, String url, Color color) {
    return IconButton(
      icon: FaIcon(icon, color: color),
      iconSize: 32,
      onPressed: () => _launchUrl(Uri.parse(url)),
    );
  }

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
