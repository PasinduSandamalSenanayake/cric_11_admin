import 'package:cric_11_admin/src/screen/up_coming_match/add_up_coming_match.dart';
import 'package:flutter/material.dart';

import '../../const/colors.dart';
import '../../widgets/upcoming_match_widgets/upcoming_match_widget.dart';

class UpComingMatch extends StatelessWidget {
  const UpComingMatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context)=>AddUpComingMatch(),
            ),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: custom_blue,
      ),

      appBar: AppBar(
        backgroundColor: custom_blue,
        title: Text(
          'Up Coming Matches',
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
            return UpComingMatchWidget();
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
