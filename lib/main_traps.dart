import 'package:flutter/material.dart';
import 'home_trips.dart';
import 'searxh_trips.dart';
import 'profile_app.dart';

class MainTrips extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MainTrips();
  }
}

class _MainTrips extends State<MainTrips>{

  int indexTap = 0;

  final List<Widget> widgetsChildren = [
    HomeTrips(),
    Serachtrips(),
    ProfileTrips()
  ];

  void onTapped(int index){
    setState(() {
      indexTap = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

   return Scaffold(
     body: widgetsChildren[
       indexTap
     ],
     bottomNavigationBar: Theme(
       data: Theme.of(context).copyWith(
         canvasColor: Colors.white,
         primaryColor: Colors.purple
       ),
       child: BottomNavigationBar(
         onTap: onTapped,
         currentIndex: indexTap,
         items: [
           BottomNavigationBarItem(
             icon: Icon(Icons.home),
             title: Text("Home")
           ),
           BottomNavigationBarItem(
               icon: Icon(Icons.search),
               title: Text("Search")
           ),
           BottomNavigationBarItem(
               icon: Icon(Icons.person),
               title: Text("User")
           )
         ],
       ),
     ),
   );
  }

}