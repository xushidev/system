import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import 'package:system/Pages/Achievement.dart';
import 'package:system/Pages/Lore.dart';
import 'package:system/Pages/Quests.dart';
import 'package:system/Pages/Settings.dart';
import 'package:system/Pages/Skills.dart';
import 'package:system/Pages/Stats.dart';
import 'package:system/Classes/Everything.dart';
import 'package:system/Classes/Settings.dart';
import 'package:system/Classes/Exp.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Image getImage(){
    if (!(pref.pathToImage == "")){
      return Image.file(File(pref.pathToImage));
    }
    return Image.asset("Wallpaper.jpg");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,

      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        automaticallyImplyLeading: false,
      ),
      
      body: ListView(
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.vertical, 
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(
                child: Text(
                  "Welcome back, ${pref.name}!"
                ),
              ),
              SizedBox(
                height: 300,
                width: 200,
                child: InkWell(
                  child: getImage(),
                  onTap: () async {
                    FilePickerResult? result = await FilePicker.platform.pickFiles(
                      type: FileType.custom,
                      allowedExtensions: ['jpg','png']
                    );
                    if (result != null) {
                      setState(() {
                        pref.pathToImage = result.files.single.path!;
                      });
                    }
                  },
                ),
              ),
              SizedBox(
                width: 300,
                child: LinearProgressIndicator(
                  value: (Exp.xp.toDouble() - (Exp.xp.toDouble() * 100)),
                ),
              ),
              SizedBox(
                child: Text(
                  "${100 - Exp.xp} xp to level ${Exp.level + 1}!"
                ),
              ),



            ],
          ),


        ],
      ),

      // I would be so sad if this doesn't work
      // basically the image loads a file
      // On tap, it should ask for a file to pick (png or jpg)
      // And then it should set the 
      // Rip.
      // Wait, :praydge:
      // Rip

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

                },
                icon: const Icon(Icons.home)
              ),
              IconButton(
                tooltip: 'Quests',
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Quests()));
                },
                icon: const Icon(Icons.assignment_turned_in_outlined)
              ),
              IconButton(
                tooltip: 'Stats',
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Stats()));
                },
                icon: const Icon(Icons.pie_chart_outline)
              ),
              IconButton(
                tooltip: 'Skills',
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Skills()));
                },
                icon: const Icon(Icons.lightbulb_circle_outlined)
              ),
              IconButton(
                tooltip: 'Achievement',
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Achievement()));
                },
                icon: const Icon(Icons.badge_outlined)
              ),
              IconButton(
                tooltip: 'Lore',
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Lore()));
                },
                icon: const Icon(Icons.book_outlined)
              ),
              IconButton(
                tooltip: 'Settings',
                onPressed: (){
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