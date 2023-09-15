import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBar(
          title: Text('Weather',
          style:GoogleFonts.ubuntu(
          textStyle:TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 30,
          ),),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.search, size: 35, color: Colors.white),
            onPressed: () {},
          ),
          actions: [],

        ),
      ),
      body: Stack(
        children: [
          // Background Image for Body
          Opacity(
            opacity: 0.9,
            child: Image.asset(
              'assets/images/background.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          // Other content goes here
          Container(
            padding: EdgeInsets.fromLTRB(20, 100, 20, 20),
            child: Center(
              // Add your other widgets here
              child: Text(
                'Your Content Goes Here',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
