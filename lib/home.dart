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
          Image.asset(
            'assets/images/background.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),

          Container(
            padding: EdgeInsets.only(top: 150,left: 40 ),
            child: Column(
              children: [
                  Text(
                    'Nepal',
                    style: GoogleFonts.ubuntu(
                      color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold
                    ),
                  ),
              ],
            ),
          ),
          Text('jbhdv',style: GoogleFonts.ubuntu(color: Colors.white),)
        ],
      ),
    );
  }
}
