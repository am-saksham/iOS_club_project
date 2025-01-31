import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Screens/about_us_page.dart';
import '../Screens/profile_page.dart';
import '../Screens/socials_screen.dart';
import 'new_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(245, 42, 40, 41), // Set background to black
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Drawer header: logo and close button
          Column(
            children: [
              // Header with logo and close button
              Container(
                padding: const EdgeInsets.only(
                  left: 40.0,
                  top: 30.0,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 90,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0, top: 15.0, bottom: 15.0),
                        child: Image.asset('assets/logo_greyscale.png'),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pop(context); // Close drawer
                      },
                    ),
                  ],
                ),
              ),

              // List of items
              NewListTile(
                icon: Icons.person,
                text: 'Account',
                onTap: () {
                  // Handle Account tap
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfilePage()));
                },
              ),
              NewListTile(
                icon: Icons.info_outline,
                text: 'About Us',
                onTap: () {
                  Navigator.pop(context); // Close drawer before navigation
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AboutUsPage()),
                  );
                },
              ),
              NewListTile(
                icon: FontAwesomeIcons.instagram,
                text: 'Socials',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SocialsScreen()),
                  );
                },
              ),
            ],
          ),
          // Removed sign-out button
        ],
      ),
    );
  }
}