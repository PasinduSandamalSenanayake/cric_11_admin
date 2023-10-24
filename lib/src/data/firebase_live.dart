
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:uuid/uuid.dart';

import '../model/live_match_model.dart';

class Firebase_Live_DataSource {
  final FirebaseFirestore _firebase = FirebaseFirestore.instance;

  Future addLiveNote (String live,String slScore,String slOver,String otScore,String otOver,int flag,String tossStatus) async {
    var uuid = Uuid().v4();
    try{
      await _firebase.collection('live').doc(uuid).set(
        {
          'id': uuid,
          'live_state' : live,
          'sri_lanka_score' : slScore,
          'sri_lanka_over' : slOver,
          'other_team_score' : otScore,
          'other_team_over' : otOver,
          'flag' : flag,
          'toss_status' : tossStatus,
        }
      );
    }catch(e){
      print('error adding live data $e');
      return true;
    }
  }

  List getLiveNote(AsyncSnapshot snapshot){
    try{
      final liveNotesList = snapshot.data.docs.map((doc){
        final data = doc.data() as Map<String, dynamic>;
        return LiveMatchNote(
          data['id'],
          data['live_state'],
          data['sri_lanka_score'],
          data['sri_lanka_over'],
          data['other_team_score'],
          data['other_team_over'],
          data['flag'],
          data['toss_status'],
        );
      }).toList();
      return liveNotesList;
    }catch(e){
      print('error getting live data $e');
      return [];
    }
  }

  Stream<QuerySnapshot> liveStream(){
    return _firebase.collection('live').snapshots();
  }

  Future updateLiveNote (String uuid, String live, String slScore, String slOver, String otScore, String otOver) async {
    try{
      await _firebase.collection('live').doc(uuid).update(
        {
          'live_state' : live,
          'sri_lanka_score' : slScore,
          'sri_lanka_over' : slOver,
          'other_team_score' : otScore,
          'other_team_over' : otOver,
        }
      );
      return true;

    }catch(e){
      print('error updating live data $e');
      return true;
    }
  }

  Future deleteLiveNote (String uuid) async {
    try{
      await _firebase.collection('live').doc(uuid).delete();
      return true;
    }catch(e){
      print('error deleting live data $e');
      return true;
    }
  }
}