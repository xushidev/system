// Scores or stats

class Stats{
  static double physical = 0;
  static double psyche = 0;
  static double intel = 0;
  static double spiritual = 0;
  static double core = 0;

  static int availablePoints = 0;

  bool addPoints(String command){
    if (availablePoints != 0){
      switch (command){
        case 'PHY':
          availablePoints--;
          physical += 0.01;
        case 'PSY':
          availablePoints--;
          psyche += 0.01;
        case 'INT':
          availablePoints--;
          intel += 0.01;
        case 'SPI':
          availablePoints--;
          spiritual += 0.01;
        case 'COR':
          availablePoints--;
          core += 0.01;
      }
      return true;
    }
    else{
     return false; 
    }
  }
  
  void levelUp(){
    availablePoints += 15;
  }

  static Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Physical'] = physical;
    data['Psyche'] = psyche;
    data['Intel'] = intel;
    data['Spiritual'] = spiritual;
    data['Core'] = core;
    data['Points'] = availablePoints;
    return data;
  }

  Stats.fromJson(Map<String, dynamic> json) {
    physical = json['Physical'];
    psyche = json['Psyche'];
    intel = json['Intel'];
    spiritual = json['Spiritual'];
    core = json['Core'];
    availablePoints = json['Points'];
  }
}
