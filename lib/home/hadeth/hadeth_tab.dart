import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
List<Hadeth>hadethList=[];

  @override
  Widget build(BuildContext context) {
    readHadethFile();
    return ListView.builder(itemBuilder: (_,index){
      return  Text(hadethList[index].title);

    },itemCount: hadethList.length,);
  }

  void readHadethFile()async{
    String fileContent=await rootBundle.loadString('assets/files/ahadeth.txt');
    List<Hadeth>ahadethOfFile=[];
    List<String> allHadeth=fileContent.trim().split("#");
    for(int i=0;i<allHadeth.length;i++){
      List<String>hadetLines=allHadeth[i].trim().split('\n');
      String title=hadetLines[0];
      if(title.isEmpty)continue;
      hadetLines.removeAt(0);
      String content=hadetLines.join('\n');
      Hadeth h=Hadeth(title, content);
      ahadethOfFile.add(h);
    }
    hadethList=ahadethOfFile;
    setState(() {});
  }
}
class Hadeth{
  String title;
  String content;
  Hadeth(this.title,this.content);
}
