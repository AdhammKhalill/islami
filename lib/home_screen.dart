import 'package:flutter/material.dart';
import 'package:islami/hadeth_tab.dart';
import 'package:islami/my_colors.dart';
import 'package:islami/quran_tab.dart';
import 'package:islami/radio_tab.dart';
import 'package:islami/tasbeh_tab.dart';


class HomeScreen extends StatefulWidget {
static const String RouteName='Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
         image: AssetImage('assets/images/default_bg.png',),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,




        appBar:AppBar(
          backgroundColor:Colors.transparent,
          elevation: 0,
          title: Text('Islami',style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.w500
          ),),

        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: MyColor.primaryColor,

          ),
          child: BottomNavigationBar(
            selectedIconTheme: IconThemeData(
              color: Colors.black
            ),
            unselectedIconTheme: IconThemeData(
              color: Colors.white
            ),
            selectedLabelStyle: TextStyle(color: Colors.black),
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
            currentIndex: selectedIndex,
            onTap: (index){
              selectedIndex=index;
              setState(() {});
            },
            items: [
             BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/icon_quran.png'),),label:'Quran' ),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png'),),label:'Hadeth' ),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/icon_sebha.png'),),label:'Tasbeh' ),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/icon_radio.png'),),label:'Radio' ),
            ],
          ),
        ),


        body: tabs[selectedIndex],
      ),
    );

  }
  List<Widget> tabs=[QuranTab(),HadethTab(),TasbehTab(),RadioTab()];

}
