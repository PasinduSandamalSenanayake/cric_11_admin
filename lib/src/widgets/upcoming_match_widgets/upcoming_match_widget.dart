import 'package:cric_11_admin/src/screen/up_coming_match/edit_up_coming_match.dart';
import 'package:flutter/material.dart';

import '../../const/colors.dart';

class UpComingMatchWidget extends StatefulWidget {
  const UpComingMatchWidget({super.key});

  @override
  State<UpComingMatchWidget> createState() => _UpComingMatchWidgetState();
}

class _UpComingMatchWidgetState extends State<UpComingMatchWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Container(
          width: double.infinity,
          height: 165,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 5,
                spreadRadius: 8,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Column(
              children: [
                match_date(),
                sl(),
                otherCountry(),
                time_location(),
              ],
            )
          ),
        ),
    );
  }
  
  Widget match_date(){
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
                "ODI 1 of 3",
                style: Theme.of(context).textTheme.bodyText2,
            ),
            Text(
              "Thu,Sep 23",
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }

  Widget sl(){
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Container(
              height: 30,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage('assets/images/sl.jpg'),
                ),
              ),
            ),
            SizedBox(width: 10,),
            Text(
                "Sri Lanka",
                style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
      ),
    );
  }

  Widget otherCountry(){
    return Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            children: [
              Container(
                height: 30,
                width: 50,
                decoration: BoxDecoration(
                  //color: Colors.green,
                  image: DecorationImage(
                    image: AssetImage('assets/images/ind.png'),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Text(
                "India",
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ],
          ),
        )
    );
  }

  Widget time_location() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Starts at 3:30 PM",
              style: Theme.of(context).textTheme.bodyText2,
            ),
            SizedBox(width: 10,),
            Text(
              "Location",
              style: Theme.of(context).textTheme.bodyText2,
            ),
            SizedBox(width: 70,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: custom_blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                minimumSize: Size(40, 10),
              ),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context)=>EditUpComingMatch(),
                  ),
                );
              },
              child: Text(
                'Edit',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ],
        ),
      ),
      );
}
}
