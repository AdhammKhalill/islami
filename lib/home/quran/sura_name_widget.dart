import 'package:flutter/material.dart';
import 'package:islami/home/quran/sura_details.dart';

class SuraNameWidget extends StatelessWidget {

String title;
int index;
SuraNameWidget(this.title,this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, SuraDetaiulsScreen.RouteName,
        arguments: SuraDetailsArgs(index, title)
        );


      },
      child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 6),
          child: Text(title,
            style: Theme.of(context).textTheme.headlineMedium,)),
    );
  }
}

