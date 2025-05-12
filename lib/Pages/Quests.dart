import 'package:flutter/material.dart';
import 'package:system/Pages/Achievement.dart';
import 'package:system/Pages/Lore.dart';
import 'package:system/Pages/Settings.dart';
import 'package:system/Pages/Skills.dart';
import 'package:system/Pages/Stats.dart';

class Quests extends StatefulWidget {
  const Quests({super.key});

  @override
  State<Quests> createState() => _QuestsState();
}

class _QuestsState extends State<Quests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quests"),
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

                },
                icon: const Icon(Icons.assignment_turned_in)
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
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Achievement()));
                },
                icon: const Icon(Icons.badge_outlined)
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