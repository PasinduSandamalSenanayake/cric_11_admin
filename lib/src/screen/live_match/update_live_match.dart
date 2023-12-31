import 'package:cric_11_admin/src/model/live_match_model.dart';
import 'package:flutter/material.dart';
import '../../const/colors.dart';
import '../../widgets/live_match_widgets/update_live_match_widget.dart';

class UpdateLiveMatch extends StatefulWidget {
  LiveMatchNote liveMatchNote;
  UpdateLiveMatch(this.liveMatchNote,{super.key});

  @override
  State<UpdateLiveMatch> createState() => _UpdateLiveMatchState();
}

class _UpdateLiveMatchState extends State<UpdateLiveMatch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: custom_blue,
        title: Text('Update Live Match'),
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              UpdateLiveMatchWidget(widget.liveMatchNote),
            ],
          ),
        ),
      ),
    );
  }
}
