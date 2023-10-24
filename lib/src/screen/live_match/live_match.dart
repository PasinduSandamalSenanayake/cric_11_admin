import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cric_11_admin/src/screen/live_match/add_live_match.dart';
import 'package:cric_11_admin/src/widgets/live_match_widgets/add_live_match_widget.dart';
import 'package:flutter/material.dart';

import '../../const/colors.dart';
import '../../data/firebase_live.dart';
import '../../widgets/live_match_widgets/live_match_widget.dart';

class LiveMatch extends StatelessWidget {
  const LiveMatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context)=>AddLiveMatch(),
            ),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: custom_blue,
      ),

      appBar: AppBar(
        backgroundColor: custom_blue,
        title: Text(
          'Live Match',
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
        stream: Firebase_Live_DataSource().liveStream(),

        builder: (context, snapshot){
          if(!snapshot.hasData){
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          final notesList = Firebase_Live_DataSource().getLiveNote(snapshot);
          print('data ' + notesList.length.toString())   ;

          return ListView.builder(
            itemBuilder: (context, index) {
              final note = notesList[index];
              return Dismissible(
                  key: UniqueKey(), 
                  onDismissed: (direction) {
                    Firebase_Live_DataSource().deleteLiveNote(note.id);
                  },
                  child: LiveMatchWidget(note));
              // print('live');
              // return LiveMatchWidget(note);
            },
            itemCount: notesList.length,
          );
        },
      ),
     ),
    );
  }
}
