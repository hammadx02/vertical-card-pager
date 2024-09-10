// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> images = [
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        "https://images.unsplash.com/photo-1609899464726-209befaac5bc?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8V29ya291dCUyMEdlYXJ8ZW58MHx8MHx8fDA%3D",
        fit: BoxFit.cover,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        "https://plus.unsplash.com/premium_photo-1661604445845-4c75a36cb93b?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8WW9nYSUyMFBvc2VzfGVufDB8fDB8fHww",
        fit: BoxFit.cover,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        "https://media.istockphoto.com/id/1441759606/photo/happy-sportswoman-with-earbuds-running-in-the-park.webp?a=1&b=1&s=612x612&w=0&k=20&c=P2-f_YCriQOG6v700vp7xBRJwePEsFC7e2Arek1QDII=",
        fit: BoxFit.cover,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        "https://plus.unsplash.com/premium_photo-1674605378401-dbf2af9e9c5c?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8SGVhbHRoeXxlbnwwfHwwfHx8MA%3D%3D",
        fit: BoxFit.cover,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        "https://images.unsplash.com/photo-1678964117504-dc77a8b9985a?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8T3V0ZG9vciUyMEFjdGl2aXRpZXN8ZW58MHx8MHx8fDA%3D",
        fit: BoxFit.cover,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        "https://plus.unsplash.com/premium_photo-1682093043490-6ddcb8b5f3a3?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8U3RyZW5ndGglMjBUcmFpbmluZ3xlbnwwfHwwfHx8MA%3D%3D",
        fit: BoxFit.cover,
      ),
    ),
  ];

  final List<String> titles = [
    'Workout Gear',
    'Yoga Poses',
    'Running Shoes',
    'Healthy Food',
    'Outdoor Activities',
    'Strength Training'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              Expanded(
                  child: VerticalCardPager(
                images: images,
                titles: titles,
                textStyle: GoogleFonts.bebasNeue(
                    fontWeight: FontWeight.bold, color: Colors.white),
                onPageChanged: (page) {},
                onSelectedItem: (index) {
                  print(index);
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}
