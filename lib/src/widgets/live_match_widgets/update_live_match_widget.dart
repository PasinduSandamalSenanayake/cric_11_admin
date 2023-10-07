import 'package:flutter/material.dart';

import '../../const/colors.dart';

class UpdateLiveMatchWidget extends StatefulWidget {
  const UpdateLiveMatchWidget({super.key});

  @override
  State<UpdateLiveMatchWidget> createState() => _UpdateLiveMatchWidgetState();
}

class _UpdateLiveMatchWidgetState extends State<UpdateLiveMatchWidget> {
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
            update_button(),
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
    );;
  }

  Widget update_button(){
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
        onPressed: (){},
        child: Text(
          'Update',
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ),
    );
  }
}
