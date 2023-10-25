import 'package:cric_11_admin/src/model/upcoming_match_model.dart';
import 'package:flutter/material.dart';

import '../../const/colors.dart';
import '../../widgets/upcoming_match_widgets/edit_upcoming_match_widget.dart';

class EditUpComingMatch extends StatefulWidget {
  UpComingMatchNote upComingMatchNote;
  EditUpComingMatch(this.upComingMatchNote,{super.key});

  @override
  State<EditUpComingMatch> createState() => _EditUpComingMatchState();
}

class _EditUpComingMatchState extends State<EditUpComingMatch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: custom_blue,
        title: Text('Edit Up Coming Match'),
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            EditUpComingMatchWidget(widget.upComingMatchNote),
          ],
        ),
      ),
    );
  }
}
