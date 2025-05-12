import 'package:flutter/material.dart';
import 'package:system/Pages/Lore.dart';
import 'package:system/Pages/Quests.dart';
import 'package:system/Pages/Settings.dart';
import 'package:system/Pages/Skills.dart';
import 'package:system/Pages/Stats.dart';

class Achievement extends StatefulWidget {
  const Achievement({super.key});

  @override
  State<Achievement> createState() => _AchievementState();
}

class _AchievementState extends State<Achievement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Achievement"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        automaticallyImplyLeading: false,
      ),



      body: ListView(

      ),



      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).colorScheme.primary,
        child: IconTheme(
          data: IconThemeData(color: Theme.of(context).colorScheme.onInverseSurface),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                tooltip: 'Home',
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.home_outlined)
              ),
              IconButton(
                tooltip: 'Quests',
                onPressed: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Quests()));
                },
                icon: const Icon(Icons.assignment_turned_in_outlined)
              ),
              IconButton(
                tooltip: 'Stats',
                onPressed: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Stats()));
                },
                icon: const Icon(Icons.pie_chart_outline)
              ),
              IconButton(
                tooltip: 'Skills',
                onPressed: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Skills()));
                },
                icon: const Icon(Icons.lightbulb_circle_outlined)
              ),
              IconButton(
                tooltip: 'Achievement',
                onPressed: (){
                  
                },
                icon: const Icon(Icons.badge)
              ),
              IconButton(
                tooltip: 'Lore',
                onPressed: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Lore()));
                },
                icon: const Icon(Icons.book_outlined)
              ),
              IconButton(
                tooltip: 'Settings',
                onPressed: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
                },
                icon: const Icon(Icons.settings_applications_outlined)
              ),
            ],
          )
        ),
      ),
    );
  }
}