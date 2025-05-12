// Class that contains everything
// Import section
import 'package:system/Classes/Achievement.dart';
import 'package:system/Classes/Bio.dart';
import 'package:system/Classes/Exp.dart';
import 'package:system/Classes/Settings.dart';
import 'package:system/Classes/Questlines.dart';
import 'package:system/Classes/Scores.dart';
import 'package:system/Classes/Skills.dart';
// Class section

class Everything {

  static Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['achievement'] = Achievement.toJson();
    data['bio'] = Bio.toJson();
    data['exp'] = Exp.toJson();
    data['settings'] = pref.toJson();
    data['scores'] = Stats.toJson();
    data['skills'] = Skills.toJson();
    data['questlines'] = Questlines.toJson();
    return data;
  }

  Everything.fromJson(Map<String, dynamic> json) {
    Achievement.fromJson(json['achievement']);
    Bio.fromJson(json['bio']);
    Exp.fromJson(json['exp']);
    pref.fromJson(json['settings']);
    Stats.fromJson(json['scores']);
    Skills.fromJson(json['skills']);
    Questlines.fromJson(json['questlines']);
  }
}