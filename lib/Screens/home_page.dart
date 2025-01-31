import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_ios_project/Screens/profile_page.dart';

import '../Components/app_drawer.dart';
import '../Components/event_card.dart';
import '../Components/news_card.dart';
import 'events_page.dart';
import 'news_page.dart';


class HomePage extends StatefulWidget {
  final int selectedIndex;
  const HomePage({super.key, this.selectedIndex = 0});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int _selectedIndex;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: const Color(0xFF2A2829),
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
          icon: const Icon(Icons.menu, color: Colors.white),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              radius: 24,
              backgroundImage: null,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => ProfilePage())
                  );
                },
                child: null,
              ),
            ),
          )
        ],
      ),
      drawer: const MyDrawer(),
      body: Container(
        color: const Color(0xFF2A2829),
        padding: const EdgeInsets.all(12.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (_selectedIndex == 0) ...[
                      Text(
                        'Hi, VITians',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  if (_selectedIndex == 0) {
                    return const HomePageContent();
                  } else if (_selectedIndex == 1) {
                    return const NewsPageContent();
                  } else {
                    return const EventsPageContent();
                  }
                },
                childCount: 1,
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF2A2829),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'News'),
          BottomNavigationBarItem(icon: Icon(Icons.event_seat), label: 'Events'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFFC3B0FF),
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF2A2829),
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const Divider(
              thickness: 3,
              color: Color(0xFF433F3F),
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'News',
                  style: GoogleFonts.poppins(
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const HomePage(selectedIndex: 1),
                      ),
                    );
                  },
                  icon: const Icon(Icons.arrow_forward, color: Colors.white),
                )
              ],
            ),
            const NewsCard(
              publisherName: 'ITNEWS.PRO',
              date: '07 OCT 2024',
              headline: 'Only 5.5% of the Indian engineers are qualified with basic programming skills: Report',
              description: 'To meet the skills needs 86% of Indian businesses are actively reskilling their IT workers, the study found.',
              imageUrl: 'https://images.unsplash.com/photo-1484417894907-623942c8ee29?q=80&w=2832&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              logoUrl: 'https://images.unsplash.com/photo-1707061229211-25325f7134ce?q=80&w=2962&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            ),
            const SizedBox(height: 10),
            const Divider(
              color: Color(0xFF433F3F),
              thickness: 3,
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Upcoming',
                  style: GoogleFonts.poppins(
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const HomePage(selectedIndex: 2),
                      ),
                    );
                  },
                  icon: const Icon(Icons.arrow_forward, color: Colors.white),
                )
              ],
            ),
            const SizedBox(height: 10),
            const EventCard(
              headline: 'iOS Unlocked',
              date: '22nd Oct 2024',
              time: '9:00 - 13:00',
              clubName: 'iOS Club',
              imageUrl: 'https://images.unsplash.com/photo-1693480594469-fafdeb4d00f5?q=80&w=2960&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              googleFormUrl: '',
            ),
          ],
        ),
      ),
    );
  }
}

