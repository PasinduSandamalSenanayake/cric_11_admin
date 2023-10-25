import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cric_11_admin/src/data/firebase_upcoming.dart';
import 'package:cric_11_admin/src/screen/up_coming_match/add_up_coming_match.dart';
import 'package:flutter/material.dart';

import '../../const/colors.dart';
import '../../widgets/upcoming_match_widgets/upcoming_match_widget.dart';

class UpComingMatch extends StatelessWidget {

  const UpComingMatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context)=>AddUpComingMatch(),
            ),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: custom_blue,
      ),

      appBar: AppBar(
        backgroundColor: custom_blue,
        title: Text(
          'Up Coming Matches',
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
          stream: Firebase_Upcoming_DataSource().upcomingStream(),

          builder: (context, snapshot){
            if(!snapshot.hasData){
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            final noteList = Firebase_Upcoming_DataSource().getUpcomingNote(snapshot);
            return ListView.builder(
              itemBuilder: (context, index){
                final note = noteList[index];
                return Dismissible(
                    key: UniqueKey(),
                    onDismissed: (direction) {
                      Firebase_Upcoming_DataSource().deleteUpcomingNote(note.id);
                    },
                    child: UpComingMatchWidget(note));
                //return UpComingMatchWidget(note);
              },
              itemCount: noteList.length,
            );
          },
        ),

      ),
    );
  }
}
