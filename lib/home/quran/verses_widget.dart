import 'package:flutter/material.dart';


class VerseWidget extends StatelessWidget {

String content;
int index;
VerseWidget(this.content,this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 6),
        child: Text('$content {${index+1}}',
          style: Theme.of(context).textTheme.bodyMedium,));
  }
}

