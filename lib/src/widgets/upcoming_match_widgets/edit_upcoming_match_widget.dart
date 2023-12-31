import 'package:cric_11_admin/src/data/firebase_upcoming.dart';
import 'package:cric_11_admin/src/model/upcoming_match_model.dart';
import 'package:flutter/material.dart';

import '../../const/colors.dart';

class EditUpComingMatchWidget extends StatefulWidget {
  UpComingMatchNote upComingMatchNote;
  EditUpComingMatchWidget(this.upComingMatchNote,{super.key});

  @override
  State<EditUpComingMatchWidget> createState() => _EditUpComingMatchWidgetState();
}

class _EditUpComingMatchWidgetState extends State<EditUpComingMatchWidget> {

  TextEditingController? matchDate;
  TextEditingController? matchTime;
  TextEditingController? matchLocation;

  FocusNode _focusNodeDate = FocusNode();
  FocusNode _focusNodeTime = FocusNode();
  FocusNode _focusNodeLocation = FocusNode();

  @override
  void initState() {
    super.initState();
    matchDate = TextEditingController(text: widget.upComingMatchNote.date);
    matchTime = TextEditingController(text: widget.upComingMatchNote.time);
    matchLocation = TextEditingController(text: widget.upComingMatchNote.location);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //matchStatue(),
          date(),
          // sl(),
          // otherTeam(),
          time(),
          location(),
          editButton(),
        ],
      ),
    );
  }

  Widget matchStatue() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
          style: Theme.of(context).textTheme.bodyText1,
          decoration: InputDecoration(
            contentPadding:  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            hintText: 'ODI 1 of 3',
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

  Widget date() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
          controller: matchDate,
          focusNode: _focusNodeDate,
          style: Theme.of(context).textTheme.bodyText1,
          decoration: InputDecoration(
            contentPadding:  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            hintText: 'Thu,Sep 23',
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

  Widget sl(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
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
    );
  }

  Widget otherTeam() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
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
    );
  }

  Widget time() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
          controller: matchTime,
          focusNode: _focusNodeTime,
          style: Theme.of(context).textTheme.bodyText1,
          decoration: InputDecoration(
            contentPadding:  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            hintText: 'Start at 3.30 PM',
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

  Widget location() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
          controller: matchLocation,
          focusNode: _focusNodeLocation,
          style: Theme.of(context).textTheme.bodyText1,
          decoration: InputDecoration(
            contentPadding:  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            hintText: 'R.Premadasa Stadium, Colombo',
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

  Widget editButton() {
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
            Firebase_Upcoming_DataSource().updateUpcomingNote(widget.upComingMatchNote.id, matchDate!.text, matchTime!.text, matchLocation!.text);
            Navigator.pop(context);
        },
        child: Text(
          'Edit',
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ),
    );
  }
}
