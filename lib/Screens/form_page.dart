import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_ios_project/Screens/profile_page.dart';

class BlackBackgroundScreen extends StatefulWidget {
  @override
  _BlackBackgroundScreenState createState() => _BlackBackgroundScreenState();
}

class _BlackBackgroundScreenState extends State<BlackBackgroundScreen> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2A2829),
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(
            title: 'Event Details',
            expandedHeight: MediaQuery.of(context).size.height * 0.8,
            backgroundImage: "assets/hero-1.jpeg",
            subtitle: "iOS Club",
          ),
          SliverToBoxAdapter(
            child: Center(
              child: Container(
                height: 5,
                width: MediaQuery.of(context).size.width * 0.4, // Adjust the width (e.g., 40% of the screen width)
                color: Colors.white.withOpacity(0.6), // The top bar color
              ),
            ),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  double fontSize = constraints.maxWidth < 600 ? 16 : 18;
                  double subtitleFontSize = constraints.maxWidth < 600 ? 20 : 24;
                  return SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'GameFlix 3.0',
                          style: GoogleFonts.poppins(
                            color: const Color(0xFF95EAFF),
                            fontSize: 30,
                            height: 1.5,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20),
                        // Event Details with Expand/Collapse
                        Text(
                          'After the successful completion of GameFlix 2.0 in AdVITya’24, we are thrilled to bring the highly-anticipated sequel! '
                              'Building on the triumph of the original, GameFlix 3.0 promises to elevate your gaming journey to unprecedented heights.',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: fontSize,
                            height: 1.5,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(height: 10),
                        _isExpanded
                            ? Column(
                          children: [
                            Text(
                              'An epic six-hour adventure that seamlessly blends the thrill of Netflix series with exciting gaming challenges. Our event, inspired by the gripping narratives of "13 Reasons Why," "Peaky Blinders," and "One Piece," promises a unique and immersive experience divided into three captivating rounds.'
                                  '\n\nRound 1: "13 Reasons Why" Audioquest\n'
                                  'Get ready for an immersive challenge inspired by the gripping narrative of "13 Reasons Why"! Each team will receive audio chips containing 13 questions featuring dialogue clips and title tracks from famous Netflix movies. Progress through four levels by correctly identifying the movie names and associated characters. Swift and accurate answers will propel your team closer to victory. Unravel the recorded tapes efficiently to advance to the next round and seize the win!'
                                  '\n\nRound 2: "Peaky Blinders" Charades Challenge\n'
                                  'Immerse in the world of "Peaky Blinders" as teams are split into the Acting Group and the Guessing Group. Act out words related to the series, allowing the other teammates to solve the clues and complete the intricate number code given to the team. The team with the sharpest intuition and seamless communication will advance to the final round.'
                                  '\n\nRound 3: "One Piece" Bounty Rush\n'
                                  'Embark on an exhilarating treasure hunt inspired by the epic series "One Piece"! Each team will receive a detailed map guiding them through three distinct locations. At each stop, decipher a placard consisting of each line of a single riddle. Arrange all the three lines of a riddle in such a way to navigate through challenges and surprises en route to the final spot where the coveted "one piece" awaits. The team that successfully reaches the ultimate destination and uncovers the hidden treasure first will be crowned the champions of GameFlix 2.0!',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: fontSize,
                                height: 1.5,
                              ),
                            ),
                            SizedBox(height: 10),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  _isExpanded = false;
                                });
                              },
                              child: Text(
                                'Show Less',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        )
                            : TextButton(
                          onPressed: () {
                            setState(() {
                              _isExpanded = true;
                            });
                          },
                          child: Text(
                            'Show More',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween, // This ensures space between columns
                          children: [
                            // First Column - Leading side
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // First Row - Date
                                Row(
                                  children: [
                                    const Icon(Icons.calendar_today, size: 24, color: Color(0xFFC3B0FF)),
                                    const SizedBox(width: 8),
                                    Text(
                                      '20th Feb 2025', // Replace with actual event date
                                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 15),
                                // Second Row - Time
                                Row(
                                  children: [
                                    const Icon(Icons.access_time, size: 24, color: Color(0xFFC3B0FF)),
                                    const SizedBox(width: 8),
                                    Text(
                                      '11:00 AM - 02:00 PM', // Replace with actual event time
                                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 15),
                                // Third Row - Venue
                                Row(
                                  children: [
                                    const Icon(Icons.location_on, size: 24, color: Color(0xFFC3B0FF)),
                                    const SizedBox(width: 8),
                                    Text(
                                      'AB-301', // Replace with actual venue
                                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 15),
                                // Fourth Row - Members
                                Row(
                                  children: [
                                    const Icon(Icons.group, size: 24, color: Color(0xFFC3B0FF)),
                                    const SizedBox(width: 8),
                                    Text(
                                      '3-4 members', // Replace with actual team size
                                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            // Second Column - Trailing side
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Image.asset("assets/money_1.png", width: 40, height: 40), // The money image
                                    const SizedBox(width: 8),
                                    Text(
                                      '₹199/- per team', // Replace with the actual registration fee
                                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        // Define your submit functionality here
                      },
                      style:ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFDFEB8A),
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        minimumSize: Size(MediaQuery.of(context).size.width * 0.6, 50),
                      ),
                      child: Text('Register',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF2A2829),
                          )),
                    ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomSliverAppBar extends StatelessWidget {
  final String title;
  final double expandedHeight;
  final String? backgroundImage;
  final String? subtitle;

  const CustomSliverAppBar({
    Key? key,
    required this.title,
    this.expandedHeight = 200.0,
    this.backgroundImage,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.black54,
      pinned: true,
      expandedHeight: expandedHeight,
      iconTheme: const IconThemeData(
        color: Colors.white, // Sets the back button color to white
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: backgroundImage != null
            ? Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              backgroundImage!,
              fit: BoxFit.cover,
            ),
            if (subtitle != null)
              Positioned(
                bottom: 20,
                left: 16,
                right: 16,
                child: Text(
                  subtitle!,
                  style: GoogleFonts.nunito(
                    fontSize: 34,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
          ],
        )
            : null,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.nunito(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundImage: null, // Set an image if available
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => ProfilePage()));
                  },
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}