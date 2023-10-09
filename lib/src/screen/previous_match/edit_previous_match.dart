 import 'package:cric_11_admin/src/widgets/previous_match_widgets/edit_previous_match_widget.dart';
import 'package:flutter/material.dart';

import '../../const/colors.dart';

class EditPreviousMatch extends StatefulWidget {
  const EditPreviousMatch({super.key});

  @override
  State<EditPreviousMatch> createState() => _EditPreviousMatchState();
}

class _EditPreviousMatchState extends State<EditPreviousMatch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: custom_blue,
        title: Text(
          'Edit Previous Match',
          style: Theme.of(context).textTheme.headline6,),
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              EditPreviousMatchWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
