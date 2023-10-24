import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cric_11_admin/src/data/firebase.dart';
import 'package:cric_11_admin/src/screen/previous_match/add_previous_match.dart';
import 'package:cric_11_admin/src/widgets/previous_match_widgets/previous_match_widget.dart';
import 'package:flutter/material.dart';

import '../../const/colors.dart';

class PreviousMatch extends StatefulWidget {
  const PreviousMatch({super.key});

  @override
  State<PreviousMatch> createState() => _PreviousMatchState();
}

class _PreviousMatchState extends State<PreviousMatch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context)=>AddPreviousMatch(),
            ),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: custom_blue,
      ),

      appBar: AppBar(
        backgroundColor: custom_blue,
        title: Text(
          'Previous Matches',
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
        child: StreamBuilder<QuerySnapshot>(
          stream: Firebase_Datasource().streamPreviousNote(),
          builder: (context, snapshot) {
            if(!snapshot.hasData){
                return CircularProgressIndicator();
            }

            final previousNoteList = Firebase_Datasource().getPreviousNote(snapshot);
            int length = previousNoteList.length;
            print('data available $length');
            return ListView.builder(
              itemBuilder: (context, index) {
                final note = previousNoteList[index];
                print('data 2');
                return PreviousMatchWidget(note);
              },
              itemCount: previousNoteList.length,
            );
          },
        ),
      ),
    );
  }
}
