import 'package:cric_11_admin/src/screen/live_match/add_live_match.dart';
import 'package:cric_11_admin/src/widgets/live_match_widgets/add_live_match_widget.dart';
import 'package:flutter/material.dart';

import '../../const/colors.dart';
import '../../widgets/live_match_widgets/live_match_widget.dart';

class LiveMatch extends StatelessWidget {
  const LiveMatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context)=>AddLiveMatch(),
            ),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: custom_blue,
      ),

      appBar: AppBar(
        backgroundColor: custom_blue,
        title: Text(
          'Live Match',
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
          return LiveMatchWidget();
        },
        itemCount: 10,
      ),
     ),
    );
  }
}
