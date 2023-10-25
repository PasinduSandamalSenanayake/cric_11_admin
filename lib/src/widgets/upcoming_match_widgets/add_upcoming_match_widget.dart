import 'package:cric_11_admin/src/data/firebase_upcoming.dart';
import 'package:flutter/material.dart';

import '../../const/colors.dart';

class AddUpComingMatchWidget extends StatefulWidget {
  const AddUpComingMatchWidget({super.key});

  @override
  State<AddUpComingMatchWidget> createState() => _AddUpComingMatchWidgetState();
}

class _AddUpComingMatchWidgetState extends State<AddUpComingMatchWidget> {

  int indexx = 0;

  final matchStatus = TextEditingController();
  final matchDate = TextEditingController();
  final sriLanka = TextEditingController();
  final ot = TextEditingController();
  final startTime = TextEditingController();
  final matchLocation = TextEditingController();

  FocusNode _focusNodeMatchStatus = FocusNode();
  FocusNode _focusNodeDate = FocusNode();
  FocusNode _focusNodeSl = FocusNode();
  FocusNode _focusNodeOtherTeam = FocusNode();
  FocusNode _focusNodeTime = FocusNode();
  FocusNode _focusNodeLocation = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          matchStatue(),
          date(),
          sl(),
          otherTeam(),
          time(),
          location(),
          countryFlag(),
          saveButton(),
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
          controller: matchStatus,
          focusNode: _focusNodeMatchStatus,
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
          controller: sriLanka,
          focusNode: _focusNodeSl,
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
          controller: ot,
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
          controller: startTime,
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

  Widget saveButton() {
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
            Firebase_Upcoming_DataSource().addUpcomingNote(matchStatus.text, matchDate.text, sriLanka.text, ot.text, startTime.text, matchLocation.text, indexx);
            Navigator.pop(context);
        },
        child: Text(
          'Save',
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ),
    );
  }

  Widget countryFlag() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        height: 60,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 11,
          itemBuilder: (context, index){
            return GestureDetector(
              onTap: (){
                setState(() {
                  indexx = index + 2;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: indexx == index + 2? custom_blue : Colors.grey,
                    width: 2,
                  ),
                ),
                width: 60,
                margin: EdgeInsets.all(5),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/flags/${index +2}.png'),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
