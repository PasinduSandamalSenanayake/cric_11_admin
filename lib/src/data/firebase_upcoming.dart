import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:uuid/uuid.dart';

import '../model/upcoming_match_model.dart';

class Firebase_Upcoming_DataSource {
  final FirebaseFirestore _firebase = FirebaseFirestore.instance;

  Future addUpcomingNote (String matchState,String date,String sl,String ot,String time,String location,int flag) async {
    var uuid = Uuid().v4();
    try{
      await _firebase.collection('upcoming').doc(uuid).set({
        'id': uuid,
        'matchStatus' : matchState,
        'matchDate' : date,
        'Sri_Lanka' : sl,
        'Other_Team' : ot,
        'time' : time,
        'location' : location,
        'flag' : flag,
      });
      return true;
    }catch(e){
      print('error adding upcoming data $e');
      return true;
    }
  }

  List getUpcomingNote (AsyncSnapshot snapshot){
    try{
      final upcomingNotesList = snapshot.data.docs.map((doc){
        final data = doc.data() as Map<String, dynamic>;
        return UpComingMatchNote(
          data['id'],
          data['matchStatus'],
          data['matchDate'],
          data['Sri_Lanka'],
          data['Other_Team'],
          data['time'],
          data['location'],
          data['flag'],
        );
      }).toList();
      return upcomingNotesList;
    }catch(e){
      print('error getting upcoming data $e');
      return [];
    }
  }

  Stream<QuerySnapshot> upcomingStream(){
    return _firebase.collection('upcoming').snapshots();
  }

  Future updateUpcomingNote (String id,String date,String time,String location) async {
    try{
      await _firebase.collection('upcoming').doc(id).update({
        'matchDate' : date,
        'time' : time,
        'location' : location,
      });
      return true;
    }catch(e){
      print('error updating upcoming data $e');
      return true;
    }
  }

  Future deleteUpcomingNote (String id) async {
    try{
      await _firebase.collection('upcoming').doc(id).delete();
      return true;
    }catch(e){
      print('error deleting upcoming data $e');
      return true;
    }
  }
}