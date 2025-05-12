// Class to store the xp

class Exp {
  static int xp = 0;
  static int level = 0;

  void QuestComplete(int expGained){
    xp += expGained;
    level = (xp/100).floor();
  }

  int getLevel(){
    return level;
  }

  Exp.fromJson(Map<String, dynamic> json) {
    xp = json['xp'];
    level = json['level'];
  }

  static Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['xp'] = xp;
    data['level'] = level;
    return data;
  }
}