import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0tQfnFZvH6Xc9WcoyXP4-W9zlsiKuQrxPYhzzN_0fGGPsmvFg3V3IGzdS&s=10',
        ),
        title: Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            fontFamily: GoogleFonts.poppins().fontFamily,
          ),
        ),
        actions: [
          Icon(Icons.settings),
          CircleAvatar(
            backgroundImage: AssetImage('assets/profile.png'),
            minRadius: 50,
            maxRadius: 50,
          ),
        ],
      ),
      body: Column(
        children: [
          // Section 1 (Icon/Mode Panduan Widget/ Sembunyikan Tag
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Row(
                children: <Widget>[
                  Icon(Icons.handyman_sharp, color: Colors.white),
                  SizedBox(width: 10.0),
                  Expanded(
                    child: Text(
                      'Mode Panduan Widget',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.remove_red_eye, color: Colors.blueAccent),
                        SizedBox(width: 5.0),
                        Text(
                          'Sembunyikan Tag',
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Section 2
          Container(
            width: 230,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              children: [
                Icon(Icons.mode_fan_off_outlined, color: Colors.white),
                SizedBox(width: 8.0),
                Text(
                  'Column > Circle Avatar',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                  ),
                ),
              ],
            ),
          ),
          // Section 3
          SizedBox(height: 10),
          CircleAvatar(
            minRadius: 50,
            maxRadius: 50,
            backgroundImage: AssetImage('assets/profile.png'),
          ),
          SizedBox(height: 10),
          Text(
            'Rizky Ramadhan',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28.0,
              fontFamily: GoogleFonts.poppins().fontFamily,
            ),
          ),
          Text(
            'Junior Flutter Developer',
            style: TextStyle(fontFamily: GoogleFonts.poppins().fontFamily),
          ),
          SizedBox(height: 8),
          Container(
            padding: EdgeInsets.all(3.0),
            width: 200,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.flutter_dash, size: 25, color: Colors.white),
                SizedBox(width: 3),
                Text(
                  'Dart & Widget Learner',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          //Section 4
          Container(
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              spacing: 4,
              children: <Widget>[
                Expanded(
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 10),
                        Icon(Icons.widgets_outlined),
                        SizedBox(height: 5),
                        Text(
                          '12',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Proyek',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.check_circle_outline),
                        Text('45'),
                        Text('Latihan'),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.star_border_outlined),
                        Text('45'),
                        Text('Latihan'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
