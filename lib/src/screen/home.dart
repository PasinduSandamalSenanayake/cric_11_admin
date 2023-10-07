//import 'dart:js';

import 'package:cric_11_admin/src/const/colors.dart';
import 'package:cric_11_admin/src/screen/live_match/live_match.dart';
import 'package:cric_11_admin/src/screen/previous_match/previous_match.dart';
import 'package:cric_11_admin/src/screen/up_coming_match/up_coming_match.dart';
import 'package:flutter/material.dart';

import '../widgets/upcoming_match_widgets/upcoming_match_widget.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: custom_blue,
        title: Text(
            'Home',
          style: Theme.of(context).textTheme.headline6,),
      ),

      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                previousMatch(),
                SizedBox(height: 10,),
                liveMatch(),
                SizedBox(height: 10,),
                upComingMatches(),
              ],
            ),
          ),
      ),
    );
  }

  Widget upComingMatches() {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 5,
            spreadRadius: 8,
            offset: Offset(0,2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          children: [
            Text(
              "Up Coming Matches",
              style: Theme.of(context as BuildContext).textTheme.subtitle2,
            ),
            Spacer(),
            // Icon(Icons.arrow_forward),
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.push(
                  context as BuildContext,
                  MaterialPageRoute(builder: (context) => UpComingMatch()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
  Widget liveMatch() {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 5,
            spreadRadius: 8,
            offset: Offset(0,2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          children: [
            Text(
              "Live match",
              style: Theme.of(context as BuildContext).textTheme.subtitle2,
            ),
            Spacer(),
            // Icon(Icons.arrow_forward),
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.push(
                  context as BuildContext,
                  MaterialPageRoute(builder: (context) => LiveMatch()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
  Widget previousMatch() {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 5,
            spreadRadius: 8,
            offset: Offset(0,2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          children: [
            Text(
              "Previous Match",
              style: Theme.of(context as BuildContext).textTheme.subtitle2,
            ),
            Spacer(),
            // Icon(Icons.arrow_forward),
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.push(
                  context as BuildContext,
                  MaterialPageRoute(builder: (context) => PreviousMatch()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

}
