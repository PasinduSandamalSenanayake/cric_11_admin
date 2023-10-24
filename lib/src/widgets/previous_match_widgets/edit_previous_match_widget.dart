import 'package:cric_11_admin/src/model/previous_match_model.dart';
import 'package:flutter/material.dart';

import '../../const/colors.dart';
import '../../data/firebase.dart';

class EditPreviousMatchWidget extends StatefulWidget {
  PreviousMatchNote _previousMatchNote;
  EditPreviousMatchWidget(this._previousMatchNote,{super.key});

  @override
  State<EditPreviousMatchWidget> createState() => _EditPreviousMatchWidgetState();
}

class _EditPreviousMatchWidgetState extends State<EditPreviousMatchWidget> {

  int indexx = 0;

  TextEditingController? matchlead;
  TextEditingController? date;
  TextEditingController? sl;
  TextEditingController? slScore;
  TextEditingController? otherTeam;
  TextEditingController? otScore;
  TextEditingController? winningTeam;
  TextEditingController? mom;

  FocusNode _focusNodeMatchLead = FocusNode();
  FocusNode _focusNodeDate = FocusNode();
  FocusNode _focusNodeSL = FocusNode();
  FocusNode _focusNodeSLScore = FocusNode();
  FocusNode _focusNodeOtherTeam = FocusNode();
  FocusNode _focusNodeOTScore = FocusNode();
  FocusNode _focusNodeWinningTeam = FocusNode();
  FocusNode _focusNodeMOM = FocusNode();

  @override
  void initState(){
    super.initState();
    matchlead = TextEditingController(text: widget._previousMatchNote.matchLeads);
    date = TextEditingController(text: widget._previousMatchNote.date);
    sl = TextEditingController(text: widget._previousMatchNote.sl);
    slScore = TextEditingController(text: widget._previousMatchNote.slScore);
    otherTeam = TextEditingController(text: widget._previousMatchNote.otherTeam);
    otScore = TextEditingController(text: widget._previousMatchNote.otScore);
    winningTeam = TextEditingController(text: widget._previousMatchNote.winningTeam);
    mom = TextEditingController(text: widget._previousMatchNote.mom);
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          leadingDetails(),
          dateDetails(),
          slDetails(),
          otherTeamDetails(),
          winnerDetails(),
          manOfTheMatch(),
          countryFlag(),
          editButton(),
        ],
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
          controller: matchlead,
          focusNode: _focusNodeMatchLead,
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
                  indexx = index+2;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: indexx == index + 2 ? custom_blue : Colors.grey,
                    width: 2,
                  ),
                ),

                width: 60,
                margin: EdgeInsets.all(5),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //int ni = index + 2;
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
          Firebase_Datasource().updatePreviousNote(widget._previousMatchNote.id, matchlead!.text, date!.text, sl!.text, slScore!.text,
              winningTeam!.text, otherTeam!.text, otScore!.text, mom!.text, indexx);
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
