import 'package:cric_11_admin/src/model/live_match_model.dart';
import 'package:cric_11_admin/src/screen/live_match/update_live_match.dart';
import 'package:flutter/material.dart';

import '../../const/colors.dart';

class LiveMatchWidget extends StatefulWidget {
  LiveMatchNote _liveMatchNote;
  LiveMatchWidget(this._liveMatchNote,{super.key});

  @override
  State<LiveMatchWidget> createState() => _LiveMatchWidgetState();
}

class _LiveMatchWidgetState extends State<LiveMatchWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        width: double.infinity,
        height: 190,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 5,
              spreadRadius: 8,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Column(
              children: [
                match_status(),
                country_flag(),
                live_score(),
                toss_status(),
                update_button(),
              ],
            )
        ),
      ),
    );
  }

  Widget match_status(){
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              widget._liveMatchNote.liveStatus,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }

  Widget country_flag(){
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              width: 70,
              decoration: BoxDecoration(
                //color: Colors.blue,
                image: DecorationImage(
                  image: AssetImage('assets/images/flags/1.png'),
                ),
              ),
            ),
            Text(
                "VS",
                style: Theme.of(context).textTheme.subtitle2,
            ),
            Container(
              height: 40,
              width: 70,
              decoration: BoxDecoration(
                //color: Colors.green,
                image: DecorationImage(
                  image: AssetImage('assets/images/flags/${widget._liveMatchNote.flag}.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget live_score() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget._liveMatchNote.slScore,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                Text(
                  widget._liveMatchNote.slOver,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget._liveMatchNote.otScore,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                Text(
                  widget._liveMatchNote.otOver,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
          ),
        ),
        // Add other widgets here if needed
      ],
    );
  }

  Widget toss_status() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget._liveMatchNote.tossStatus,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }

  Widget update_button() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        ElevatedButton(
        style: ElevatedButton.styleFrom(
        primary: custom_blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          minimumSize: Size(40, 10),
        ),
        onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context)=>UpdateLiveMatch(widget._liveMatchNote),
            ),
          );
        },
        child: Text(
          'Edit',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
          ],
        ),
      ),
    );
  }

}
