import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

class Firebase_Datasource{
  final FirebaseFirestore _firebase = FirebaseFirestore.instance;

  Future<bool> addPreviousNote(String matchLeads, String date, String sl, String slScore, String otherTeam, String otScore,
      String winningTeam, String mom) async {
    var uuid = Uuid().v4();
    try{
      await _firebase.collection('previousMatch')
      .doc(uuid)
      .set({
        'id': uuid,
        'matchLeads': matchLeads,
        'date': date,
        'Sri Lanka': sl,
        'Sri Lanka Score': slScore,
        'Other Team': otherTeam,
        'Other Team Score': otScore,
        'Winning Team' : winningTeam,
        'Man of the Match' : mom,
      });
      return true;
  }catch(e){
    return true;
  }
  }
}