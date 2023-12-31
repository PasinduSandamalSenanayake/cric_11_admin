import 'package:cric_11_admin/src/data/firebase_live.dart';
import 'package:flutter/material.dart';

import '../../const/colors.dart';

class AddLiveMatchWidget extends StatefulWidget {
  const AddLiveMatchWidget({super.key});

  @override
  State<AddLiveMatchWidget> createState() => _AddLiveMatchWidgetState();
}

class _AddLiveMatchWidgetState extends State<AddLiveMatchWidget> {

  final liveStatus = TextEditingController();
  final slScore = TextEditingController();
  final slOver = TextEditingController();
  final otScore = TextEditingController();
  final otOver = TextEditingController();
  final tossStatus = TextEditingController();

  FocusNode _focusNodeLiveStatus = FocusNode();
  FocusNode _focusNodeSlScore = FocusNode();
  FocusNode _focusNodeSlOver = FocusNode();
  FocusNode _focusNodeOtScore = FocusNode();
  FocusNode _focusNodeOtOver = FocusNode();
  FocusNode _focusNodeTossStatus = FocusNode();

  int indexx = 0;

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
            toss_status_text(),
            toss_status(),
            flag_text(),
            flag_image(),
            save_button(),

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
                controller: liveStatus,
                focusNode: _focusNodeLiveStatus,
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

  Widget toss_status_text(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child : Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Text("Toss Status : ", style: Theme.of(context).textTheme.subtitle2,),
              ],
          ),

        ),
      ),
      ],
    );
  }

  Widget toss_status(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
          controller: tossStatus,
          focusNode: _focusNodeTossStatus,
          style: Theme.of(context).textTheme.subtitle2,
          maxLines: 2,
          decoration: InputDecoration(
            contentPadding:  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            hintText: 'Sri Lanka won the toss and elected to bat first',
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
    );
  }

  Widget save_button(){
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
          Firebase_Live_DataSource().addLiveNote(liveStatus.text, slScore.text, slOver.text, otScore.text, otOver.text, indexx, tossStatus.text);
          Navigator.pop(context);
        },
        child: Text(
          'Enter',
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ),
    );
  }

  Widget flag_text(){
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child : Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Flag : ", style: Theme.of(context).textTheme.subtitle2,),
              ],
            ),

          );
  }

  Widget flag_image() {
    return Container(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 11,
        itemBuilder: (context, index){
          return GestureDetector(
            onTap: (){
              setState(() {
                indexx = index + 2;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: indexx == index + 2 ? custom_blue : Colors.grey,
                  width: 2,
                ),
              ),
              width: 60,
              margin: EdgeInsets.all(5),
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/flags/${index +2}.png'),
                ],
              ),
            ),
          );
        },
      ),
    );
}

}
