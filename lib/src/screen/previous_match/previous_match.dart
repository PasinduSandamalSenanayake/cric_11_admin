import 'package:cric_11_admin/src/screen/previous_match/add_previous_match.dart';
import 'package:cric_11_admin/src/widgets/previous_match_widgets/previous_match_widget.dart';
import 'package:flutter/material.dart';

import '../../const/colors.dart';

class PreviousMatch extends StatefulWidget {
  const PreviousMatch({super.key});

  @override
  State<PreviousMatch> createState() => _PreviousMatchState();
}

class _PreviousMatchState extends State<PreviousMatch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context)=>AddPreviousMatch(),
            ),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: custom_blue,
      ),

      appBar: AppBar(
        backgroundColor: custom_blue,
        title: Text(
          'Previous Matches',
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
        child: ListView.builder(
          itemBuilder: (context, index) {
            return PreviousMatchWidget();
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
