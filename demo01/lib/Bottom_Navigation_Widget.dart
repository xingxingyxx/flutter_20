import 'package:demo01/Pages/airplay_screen.dart';
import 'package:demo01/Pages/email_screen.dart';
import 'package:demo01/Pages/home_screen.dart' ;
import 'package:demo01/Pages/pages_screen.dart';
import 'package:flutter/material.dart';
import 'Pages/home_screen.dart';
import 'Pages/email_screen.dart';
import 'Pages/pages_screen.dart';
import 'Pages/airplay_screen.dart';

class BottomNavigationWidget  extends StatefulWidget {
  @override
  BottomNavigationWidgetState createState() => BottomNavigationWidgetState();
}

class BottomNavigationWidgetState extends State<BottomNavigationWidget > {
  final _BottomNavigationcolor=Colors.blue;
  int _currentIndex=0;
  List<Widget> list=List();

  @override
  void initState(){
    list
    ..add(HomeScreen())
    ..add(EmailScreen())
    ..add(PagesScreen())
    ..add(AirplayScreen());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items:[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color:_BottomNavigationcolor,

            ),
            title:Text(
              'Home',
              style:TextStyle(color: _BottomNavigationcolor)
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color:_BottomNavigationcolor,

            ),
            title:Text(
              'Email', 
              style:TextStyle(color: _BottomNavigationcolor)
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pages,
              color:_BottomNavigationcolor,

            ),
            title:Text(
              'Pages',
              style:TextStyle(color: _BottomNavigationcolor)
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.airplay,
              color:_BottomNavigationcolor,

            ),
            title:Text(
              'Airplay',
              style:TextStyle(color: _BottomNavigationcolor)
            )
          ),
        ],
        currentIndex: _currentIndex,//高亮
        onTap: (int index){
          setState((){
            _currentIndex=index;
          });
        },
      ),
    );
  }
}