import 'package:cric_11_admin/src/data/firebase_live.dart';
import 'package:cric_11_admin/src/model/live_match_model.dart';
import 'package:flutter/material.dart';

import '../../const/colors.dart';

class UpdateLiveMatchWidget extends StatefulWidget {
  LiveMatchNote _liveMatchNote;
  UpdateLiveMatchWidget(this._liveMatchNote,{super.key});

  @override
  State<UpdateLiveMatchWidget> createState() => _UpdateLiveMatchWidgetState();
}

class _UpdateLiveMatchWidgetState extends State<UpdateLiveMatchWidget> {

  TextEditingController? live;
  TextEditingController? slScore;
  TextEditingController? slOver;
  TextEditingController? otScore;
  TextEditingController? otOver;

  FocusNode _focusNodeLive = FocusNode();
  FocusNode _focusNodeSlScore = FocusNode();
  FocusNode _focusNodeSlOver = FocusNode();
  FocusNode _focusNodeOtScore = FocusNode();
  FocusNode _focusNodeOtOver = FocusNode();

  @override
  void initState(){
    super.initState();
    live = TextEditingController(text: widget._liveMatchNote.liveStatus);
    slScore = TextEditingController(text: widget._liveMatchNote.slScore);
    slOver = TextEditingController(text: widget._liveMatchNote.slOver);
    otScore = TextEditingController(text: widget._liveMatchNote.otScore);
    otOver = TextEditingController(text: widget._liveMatchNote.otOver);
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            live_status(),
            sl_score(),
            sl_over(),
            other_team_score(),
            other_team_over(),
            update_button(),
          ],
        ),

      ),
    );
  }
  Widget live_status(){
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Live Status : ",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            SizedBox(width: 10,),
            Container(
              height: 50,
              width: 170,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: live,
                focusNode: _focusNodeLive,
                style: Theme.of(context).textTheme.subtitle2,
                decoration: InputDecoration(
                  contentPadding:  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  hintText: 'Live',
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
      ),
    );
  }

  Widget sl_score(){
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Sri Lanka Score: ",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            SizedBox(width: 10,),
            Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: slScore,
                focusNode: _focusNodeSlScore,
                style: Theme.of(context).textTheme.subtitle2,
                decoration: InputDecoration(
                  contentPadding:  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  hintText: '301/7',
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
      ),
    );
  }

  Widget sl_over() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Sri Lanka Overs : ",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            SizedBox(width: 10,),
            Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: slOver,
                focusNode: _focusNodeSlOver,
                style: Theme.of(context).textTheme.subtitle2,
                decoration: InputDecoration(
                  contentPadding:  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  hintText: '(45.3)',
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
      ),
    );
  }

  Widget other_team_score(){
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Other Team Score: ",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            SizedBox(width: 10,),
            Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: otScore,
                focusNode: _focusNodeOtScore,
                style: Theme.of(context).textTheme.subtitle2,
                decoration: InputDecoration(
                  contentPadding:  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  hintText: '301/7',
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
      ),
    );
  }

  Widget other_team_over() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Other Team Overs : ",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            SizedBox(width: 10,),
            Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: otOver,
                focusNode: _focusNodeOtOver,
                style: Theme.of(context).textTheme.subtitle2,
                decoration: InputDecoration(
                  contentPadding:  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  hintText: '(45.3)',
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
      ),
    );
  }

  Widget update_button(){
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
          Firebase_Live_DataSource().updateLiveNote(widget._liveMatchNote.id,live!.text, slScore!.text, slOver!.text, otScore!.text, otOver!.text);
          Navigator.pop(context);
        },
        child: Text(
          'Update',
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ),
    );
  }

}
