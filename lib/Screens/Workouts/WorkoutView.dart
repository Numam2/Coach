import 'package:flutter/material.dart';
import 'package:personal_trainer/Screens/Workouts/WeekList.dart';

class WorkoutView extends StatefulWidget {
  @override
  _WorkoutViewState createState() => _WorkoutViewState();
}

class _WorkoutViewState extends State<WorkoutView> {
  @override
  Widget build(BuildContext context) {
    return 

            Scaffold(                  
               
               ///////////////// App bar /////////////////
               appBar: AppBar(
                  backgroundColor: Colors.black,
                  title: Text('My Plan', style: TextStyle(color:Colors.white),),
                  leading: InkWell(
                        onTap: () {Navigator.pop(context);},
                        child: Icon(
                          Icons.keyboard_arrow_left
                        ),
                      ),
                  centerTitle: true,
                  ),
  
                ///////////////// Body /////////////////
                body: DaysPage(),
            );       
   }
}