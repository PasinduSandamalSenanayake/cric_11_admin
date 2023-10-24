import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cric_11_admin/src/model/previous_match_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:uuid/uuid.dart';

class Firebase_Datasource{
  final FirebaseFirestore _firebase = FirebaseFirestore.instance;

  Future<bool> addPreviousNote(String matchLeads, String date, String sl, String slScore, String otherTeam, String otScore,
      String winningTeam, String mom, int flag) async {
    var uuid = Uuid().v4();
    try{
      await _firebase.collection('previous')
      .doc(uuid)
      .set({
        'id': uuid,
        'match_leads': matchLeads,
        'date': date,
        'sri_lanka': sl,
        'sri_lanka_score': slScore,
        'other_team': otherTeam,
        'other_team_score': otScore,
        'winning_team' : winningTeam,
        'man_of_the_match' : mom,
        'flag' : flag,
      });
      return true;
  }catch(e){
    return true;
  }
  }

  Future<bool> updatePreviousNote(String uuid,String matchLeads, String date, String sl, String slScore, String otherTeam, String otScore,
      String winningTeam, String mom, int flag) async {
    try{
      await _firebase.collection('previous')
          .doc(uuid)
          .update({
        'match_leads': matchLeads,
        'date': date,
        'sri_lanka': sl,
        'sri_lanka_score': slScore,
        'other_team': otherTeam,
        'other_team_score': otScore,
        'winning_team' : winningTeam,
        'man_of_the_match' : mom,
        'flag' : flag,
      });
      return true;
    }catch(e){
      print('error updating data $e');
      return true;
    }
  }

  List getPreviousNote (AsyncSnapshot snapshot){
    try{
      final previousNotesList = snapshot.data.docs.map((doc){
        final data = doc.data() as Map<String, dynamic>;
        return PreviousMatchNote(
          data['id'],
          data['match_leads'],
          data['date'],
          data['sri_lanka'],
          data['sri_lanka_score'],
          data['other_team'],
          data['winning_team'],
          data['other_team_score'],
          data['flag'],
          data['man_of_the_match'],
        );
      }).toList();
      return previousNotesList;
    }catch(e){
      print('data not found $e');
      return [];
    }
  }

  Stream<QuerySnapshot> streamPreviousNote(){
    return _firebase.collection('previous').snapshots();
  }

  Future<bool> deletePreviousNote (String uuid) async {
    try{
      await _firebase.collection('previous').doc(uuid).delete();
      return true;
  }catch(e){
    print('error deleting data $e');
    return true;
  }
  }
}