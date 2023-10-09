import 'package:cric_11_admin/src/widgets/live_match_widgets/add_live_match_widget.dart';
import 'package:flutter/material.dart';

import '../../const/colors.dart';

class AddLiveMatch extends StatefulWidget {
  const AddLiveMatch({super.key});

  @override
  State<AddLiveMatch> createState() => _AddLiveMatchState();
}

class _AddLiveMatchState extends State<AddLiveMatch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: custom_blue,
        title: Text('Add Live Match'),
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
              AddLiveMatchWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
