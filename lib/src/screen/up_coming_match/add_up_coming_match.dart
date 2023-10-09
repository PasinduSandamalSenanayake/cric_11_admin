import 'package:cric_11_admin/src/widgets/upcoming_match_widgets/add_upcoming_match_widget.dart';
import 'package:flutter/material.dart';

import '../../const/colors.dart';

class AddUpComingMatch extends StatefulWidget {
  const AddUpComingMatch({super.key});

  @override
  State<AddUpComingMatch> createState() => _AddUpComingMatchState();
}

class _AddUpComingMatchState extends State<AddUpComingMatch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: custom_blue,
        title: Text('Add Up Coming Match'),
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
              AddUpComingMatchWidget(),
            ],
          ),
        ),
      ),
    );
  }

}
