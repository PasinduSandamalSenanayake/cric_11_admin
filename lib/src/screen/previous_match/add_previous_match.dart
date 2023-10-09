import 'package:cric_11_admin/src/data/firebase.dart';
import 'package:flutter/material.dart';

import '../../const/colors.dart';

class AddPreviousMatch extends StatefulWidget {
  const AddPreviousMatch({super.key});

  @override
  State<AddPreviousMatch> createState() => _AddPreviousMatchState();
}

class _AddPreviousMatchState extends State<AddPreviousMatch> {

  final matchLeads = TextEditingController();
  final date = TextEditingController();
  final sl = TextEditingController();
  final slScore = TextEditingController();
  final otherTeam = TextEditingController();
  final otScore = TextEditingController();
  final winningTeam = TextEditingController();
  final mom = TextEditingController();

  FocusNode _focusNodeMatchLeads = FocusNode();
  FocusNode _focusNodeDate = FocusNode();
  FocusNode _focusNodeSL = FocusNode();
  FocusNode _focusNodeSLScore = FocusNode();
  FocusNode _focusNodeOtherTeam = FocusNode();
  FocusNode _focusNodeOTScore = FocusNode();
  FocusNode _focusNodeWinningTeam = FocusNode();
  FocusNode _focusNodeMOM = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: custom_blue,
        title: Text(
          'Previous Match',
          style: Theme.of(context).textTheme.headline6,),
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView( // Wrap the Column in a SingleChildScrollView
          child: Column(
            children: [
              leadingDetails(),
              dateDetails(),
              slDetails(),
              otherTeamDetails(),
              winnerDetails(),
              manOfTheMatch(),
              enterButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget leadingDetails() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
         decoration: BoxDecoration(
           color: Colors.white,
            borderRadius: BorderRadius.circular(10),
         ),
        child: TextField(

          controller: matchLeads,
          focusNode: _focusNodeMatchLeads,

          style: Theme.of(context).textTheme.subtitle2,
          decoration: InputDecoration(
            contentPadding:  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            hintText: 'ODI 1 of 3 (SL leads 1-0)',
            hintStyle: Theme.of(context).textTheme.bodyText1,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: custom_blue,
                width: 2.0
              ),
            ),
          ),
        ),

      ),
    );
  }

  Widget dateDetails() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(

          controller: date,
          focusNode: _focusNodeDate,

          style: Theme.of(context).textTheme.subtitle2,
          decoration: InputDecoration(
            contentPadding:  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            hintText: 'Match Date: 23rd July 2021',
            hintStyle: Theme.of(context).textTheme.bodyText1,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  color: custom_blue,
                  width: 2.0
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget slDetails() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 50,
            width: 170,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(

              controller: sl,
              focusNode: _focusNodeSL,

              style: Theme.of(context).textTheme.subtitle2,
              decoration: InputDecoration(
                contentPadding:  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                hintText: 'Sri Lanka',
                hintStyle: Theme.of(context).textTheme.bodyText1,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      color: custom_blue,
                      width: 2.0
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            width: 170,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(

              controller: slScore,
              focusNode: _focusNodeSLScore,

              style: Theme.of(context).textTheme.subtitle2,
              decoration: InputDecoration(
                contentPadding:  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                hintText: 'Score(301/7)',
                hintStyle: Theme.of(context).textTheme.bodyText1,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      color: custom_blue,
                      width: 2.0
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget winnerDetails() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(

          controller: winningTeam,
          focusNode: _focusNodeWinningTeam,

          style: Theme.of(context).textTheme.subtitle2,
          decoration: InputDecoration(
            contentPadding:  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            hintText: 'SL won by 7 wickets',
            hintStyle: Theme.of(context).textTheme.bodyText1,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  color: custom_blue,
                  width: 2.0
              ),
            ),
          ),
        ),

      ),
    );
  }

  Widget otherTeamDetails() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 50,
            width: 170,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(

              controller: otherTeam,
              focusNode: _focusNodeOtherTeam,

              style: Theme.of(context).textTheme.subtitle2,
              decoration: InputDecoration(
                contentPadding:  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                hintText: 'India',
                hintStyle: Theme.of(context).textTheme.bodyText1,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      color: custom_blue,
                      width: 2.0
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            width: 170,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(

              controller: otScore,
              focusNode: _focusNodeOTScore,
              style: Theme.of(context).textTheme.subtitle2,
              decoration: InputDecoration(
                contentPadding:  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                hintText: 'Score(266/9)',
                hintStyle: Theme.of(context).textTheme.bodyText1,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      color: custom_blue,
                      width: 2.0
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget manOfTheMatch() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(

          controller: mom,
          focusNode: _focusNodeMOM,

          style: Theme.of(context).textTheme.subtitle2,
          decoration: InputDecoration(
            contentPadding:  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            hintText: 'Kusal Perera(SL) 89(77) - MOM',
            hintStyle: Theme.of(context).textTheme.bodyText1,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  color: custom_blue,
                  width: 2.0
              ),
            ),
          ),
        ),

      ),
    );
  }

  Widget enterButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: custom_blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            minimumSize: Size(200, 50),
          ),
          onPressed: (){
            Firebase_Datasource().addPreviousNote(matchLeads.text, date.text, sl.text, slScore.text,
                winningTeam.text, otherTeam.text, otScore.text, mom.text);
            Navigator.pop(context);
          },
          child: Text(
            'Enter',
            style: Theme.of(context).textTheme.subtitle2,
          ),
      ),
    );
  }
}
